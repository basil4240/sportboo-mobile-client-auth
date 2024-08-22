import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:sportboo_mobile_client/src/auth/presentation/cubit/auth_cubit.dart';
import 'package:sportboo_mobile_client/src/auth/presentation/view/enter_otp_screen.dart';
import 'package:sportboo_mobile_client/src/auth/presentation/view/phone_verification.dart';
import 'package:sportboo_mobile_client/src/auth/presentation/widgets/existing_account_dialog.dart';
import '../../../../components/button_widget.dart';
import '../../../../components/heading_widget.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/unils/utils.dart';
import 'login_view.dart';

class RegistrationView extends StatefulWidget {
  const RegistrationView({super.key});

  @override
  State<RegistrationView> createState() => _RegistrationViewState();
}

class _RegistrationViewState extends State<RegistrationView> {
  bool _showHidePassword = false;

  bool _showAgreeError = false;

  final form = FormGroup(
    {
      'fullName': FormControl<String>(validators: [
        Validators.required,
        Validators.pattern(r'^[A-Za-z\-]+(?: [A-Za-z\-]+)+$')
      ]),
      'agree': FormControl<bool>(validators: [
        Validators.required,
      ]),
      'username': FormControl<String>(validators: [
        Validators.required,
        Validators.minLength(4),
      ]),
      'email': FormControl<String>(validators: [
        Validators.required,
        Validators.email,
      ]),
      'password': FormControl<String>(validators: [
        Validators.required,
        Validators.minLength(8),
        Validators.maxLength(20)
      ]),
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.tertiary0,
      appBar: AppBar(
        backgroundColor: AppColors.tertiary0,
        leading: const SizedBox(),
        elevation: 0,
      ),
      body: BlocListener<AuthCubit, AuthState>(
        listenWhen: (previous, current) => previous != current,
        listener: (context, state) {
          if (state is AuthLoading) {
            showSportbooLoader();
          } else {
            closeSportbooLoader();
          }

          if (state is AuthError) {
            if (state.statusCode == 406) {
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (context) {
                  return ExistingAccountDialog(
                    message: state.message,
                    onYesTap: () => context.read<AuthCubit>().requestRegistrationOtp(  email: form.control('email').value),
                  );
                },
              );
            } else {
              showSportbooSnackBar(state.message, (_) {});
            }
          } else if (state is UserRegistered || state is RegistrationOtpSent) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => EnterOtpScreen(
                  nextScreen: const PhoneVerificationScreen(),
                  otpRecipient: form.control('email').value,
                ),
              ),
            );
          }


        },
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: ReactiveForm(
              formGroup: form,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const HeadingWidget(
                    'Sign up',
                    subheading: 'Create your account to get started.',
                  ),
                  Gap(32.h),
                  ReactiveTextField(
                    autocorrect: false,
                    textAlignVertical: TextAlignVertical.center,
                    formControlName: 'fullName',
                    style: const TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: AppColors.tertiaryBase10,
                    ),
                    decoration: authFormFieldInputDecoration(
                      hintText: 'Enter Full name',
                      labelText: 'Full Name(John Doe)',
                      context: context,
                    ),
                    validationMessages: {
                      'required': (error) => 'Full name required',
                      'pattern': (error) => 'Invalid full name'
                    },
                    keyboardType: TextInputType.emailAddress,
                  ),
                  Gap(24.h),
                  ReactiveTextField(
                    autocorrect: false,
                    formControlName: 'username',
                    style: const TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: AppColors.tertiaryBase10,
                    ),
                    decoration: authFormFieldInputDecoration(
                      hintText: 'Enter Username',
                      labelText: 'Username',
                      context: context,
                    ),
                    validationMessages: {
                      'required': (error) => 'Username field is required',
                      'minLength': (error) => 'Username must have at least 4 characters',
                    },
                    keyboardType: TextInputType.emailAddress,
                  ),
                  Gap(24.h),
                  ReactiveTextField(
                    autocorrect: false,
                    formControlName: 'email',
                    style: const TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: AppColors.tertiaryBase10,
                    ),
                    decoration: authFormFieldInputDecoration(
                      hintText: 'Enter Email',
                      labelText: 'Email',
                      context: context,
                    ),
                    validationMessages: {
                      'required': (error) => 'The email must not be empty',
                      'email': (error) => 'Invalid input'
                    },
                    keyboardType: TextInputType.emailAddress,
                  ),
                  Gap(24.h),
                  ReactiveTextField(
                    autocorrect: false,
                    formControlName: 'password',
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: !_showHidePassword,
                    style: const TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: AppColors.tertiaryBase10,
                    ),
                    decoration: authFormFieldInputDecoration(
                      hintText: 'Enter Password',
                      labelText: 'Password',
                      context: context,
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _showHidePassword = !_showHidePassword;
                          });
                        },
                        icon: _showHidePassword
                            ? const Icon(Icons.visibility_off)
                            : const Icon(Icons.visibility),
                      ),
                    ),
                    validationMessages: {
                      'required': (error) => 'The password must not be empty',
                      'minLength': (error) => 'The password must have at least 8 characters',
                      'maxLength': (error) => 'The password must have at most 20 characters'
                    },
                  ),
                  Gap(16.h),
                  ReactiveCheckboxListTile(
                    formControlName: 'agree',
                    title: RichText(
                      text: TextSpan(
                        children: [
                          const TextSpan(
                            text: 'Confirm you are 18 or above, agree to the ',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                              color: AppColors.tertiaryBase10,
                            ),
                          ),
                          TextSpan(
                            text: 'Terms & Conditions',
                            style: const TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                              color: AppColors.primaryBase6,
                            ),
                            recognizer: TapGestureRecognizer()..onTap = () {},
                          ),
                          const TextSpan(
                            text: ' and ',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                              color: AppColors.tertiaryBase10,
                            ),
                          ),
                          TextSpan(
                            text: 'Privacy policy',
                            style: const TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                              color: AppColors.primaryBase6,
                            ),
                            recognizer: TapGestureRecognizer()..onTap = () {},
                          ),
                        ],
                      ),
                    ),
                    dense: true,
                    checkColor: AppColors.tertiary1,
                    activeColor: AppColors.primaryBase6,
                    visualDensity: VisualDensity.compact,
                    contentPadding: EdgeInsets.zero,
                    controlAffinity: ListTileControlAffinity.leading,
                    subtitle: Padding(
                      padding: EdgeInsets.only(top: 6.0.h),
                      child: _showAgreeError
                          ? const Text(
                              'You must consent to this',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: AppColors.dangerBase3,
                              ),
                            )
                          : null,
                    ),
                    onChanged: (control) {
                      setState(() {
                        _showAgreeError = !(control.value ?? true);
                      });
                    },
                  ),
                  Gap(16.h),
                  AppButton(
                    text: 'Continue',
                    onTap: () {
                      if (form.valid) {
                        context.read<AuthCubit>().registerUser(
                          fullname: form.control('fullName').value,
                          email: form.control('email').value,
                          password: form.control('password').value,
                          username: form.control('username').value,
                        );
                      } else {
                        form.markAllAsTouched();
                      }
                    },
                  ),
                  Gap(24.h),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          const TextSpan(
                            text: 'Already have an account? ',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: AppColors.tertiary9,
                            ),
                          ),
                          TextSpan(
                            text: 'Login',
                            style: const TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: AppColors.primaryBase6,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const LoginView(),
                                    ),
                                  ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Gap(32.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AppCheckWidget extends StatefulWidget {
  const AppCheckWidget({super.key});

  @override
  State<AppCheckWidget> createState() => _AppCheckWidgetState();
}

class _AppCheckWidgetState extends State<AppCheckWidget> {
  var value = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          value = !value;
        });
      },
      child: Container(
        height: 24,
        width: 24,
        decoration: BoxDecoration(
            color: value ? AppColors.primaryBase6 : null,
            borderRadius: BorderRadius.circular(4),
            border: value
                ? null
                : Border.all(
                    color: AppColors.tertiary5,
                  )),
        child: Center(
            child: SvgPicture.asset(
          getSvg('check'),
          height: 8,
          width: 10,
        )),
      ),
    );
  }
}
