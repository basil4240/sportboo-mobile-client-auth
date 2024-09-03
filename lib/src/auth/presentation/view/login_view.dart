import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:sportboo_mobile_client/core/home/home_page.dart';
import 'package:sportboo_mobile_client/core/unils/utils.dart';
import 'package:sportboo_mobile_client/src/auth/presentation/cubit/auth_cubit.dart';
import 'package:sportboo_mobile_client/src/auth/presentation/view/forget_password_view.dart';
import 'package:sportboo_mobile_client/src/auth/presentation/view/enter_otp_screen.dart';
import 'package:sportboo_mobile_client/src/auth/presentation/view/phone_verification.dart';
import 'package:sportboo_mobile_client/src/auth/presentation/view/registration_view.dart';
import 'package:sportboo_mobile_client/src/auth/presentation/widgets/existing_account_dialog.dart';

import '../../../../components/button_widget.dart';
import '../../../../components/heading_widget.dart';
import '../../../../core/theme/colors.dart';

GoogleSignIn _googleSignIn = GoogleSignIn(
  scopes: ['email'],
);

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool _showHidePassword = false;

  final form = FormGroup(
    {
      'email': FormControl<String>(
        validators: [Validators.required, Validators.email],
      ),
      'password': FormControl<String>(validators: [
        Validators.required,
        Validators.minLength(8),
        Validators.maxLength(20)
      ]),
    },
  );

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
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
                      onYesTap: () => context
                          .read<AuthCubit>()
                          .requestRegistrationOtp(
                              email: form.control('email').value),
                    );
                  },
                );
              } else {
                showSportbooSnackBar(state.message, (_) {});
              }
            } else if (state is LoggedIn) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              );
            } else if (state is RegistrationOtpSent) {
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
              padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.h),
              child: ReactiveForm(
                formGroup: form,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const HeadingWidget(
                      'Login',
                      subheading: 'Welcome, login to access your account.',
                    ),
                    Gap(32.h),
                    ReactiveTextField(
                      autocorrect: false,
                      textAlignVertical: TextAlignVertical.center,
                      formControlName: 'email',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
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
                      textAlignVertical: TextAlignVertical.center,
                      formControlName: 'password',
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: !_showHidePassword,
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
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
                        'minLength': (error) =>
                            'The password must have at least 6 characters',
                        'maxLength': (error) =>
                            'The password must have at most 20 characters'
                      },
                    ),
                    Gap(16.h),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ForgetPasswordView(),
                          ),
                        );
                      },
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                          color: AppColors.primaryBase6,
                        ),
                      ),
                    ),
                    Gap(24.h),
                    AppButton(
                      text: 'Login',
                      onTap: () {
                        if (form.valid) {
                          context.read<AuthCubit>().loginWithEmail(
                            email: form.control('email').value,
                            password: form.control('password').value,
                          );
                        } else {
                          form.markAllAsTouched();
                        }
                      },
                    ),
                    Gap(24.h),
                    const Center(
                      child: Text(
                        'or continue with',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: AppColors.tertiary9,
                        ),
                      ),
                    ),
                    Gap(24.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: _buildSocialLoginContainer(icon: 'apple'),
                        ),
                        const Gap(16),
                        Expanded(
                          child: _buildSocialLoginContainer(
                            icon: 'Facebook',
                            onTap: () async {
                              await FacebookAuth.instance.login().then((result) {
                                if (result.status == LoginStatus.success) {
                                  // User logged in
                                  final AccessToken accessToken = result.accessToken!;

                                  context.read<AuthCubit>().loginWithFacebook(accessToken: accessToken.token);
                                }
                              });
                            },
                          ),
                        ),
                        const Gap(16),
                        Expanded(
                          child: _buildSocialLoginContainer(
                            icon: 'google',
                            onTap: () async {
                              await _googleSignIn.signIn().then((result) {
                                result?.authentication.then((googleKey) {
                                  context.read<AuthCubit>().loginWithGoogle(idToken: googleKey.idToken ?? '');
                                });
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    Gap(32.h),
                    Center(
                      child: RichText(
                        text: TextSpan(
                          children: [
                            const TextSpan(
                              text: 'Don’t have an account? ',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: AppColors.tertiary9,
                              ),
                            ),
                            TextSpan(
                              text: 'Sign up',
                              style: const TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: AppColors.primaryBase6,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const RegistrationView(),
                                      ),
                                    ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Gap(16.h),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSocialLoginContainer(
      {required String icon, void Function()? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 56,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: AppColors.tertiary3,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Center(
          child: SvgPicture.asset(
            getSvg(icon),
            height: 32,
            width: 32,
          ),
        ),
      ),
    );
  }
}
