import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:sportboo_mobile_client/shared/widgets/SuccessView.dart';
import 'package:sportboo_mobile_client/src/auth/presentation/cubit/auth_cubit.dart';
import '../../../../components/button_widget.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/unils/utils.dart';
import 'login_view.dart';

class ResetPasswordView extends StatefulWidget {
  const ResetPasswordView({super.key});

  @override
  State<ResetPasswordView> createState() => _ResetPasswordViewState();
}

class _ResetPasswordViewState extends State<ResetPasswordView> {
  bool _showHidePassword = false;

  final form = FormGroup({
    'password': FormControl<String>(validators: [
      Validators.required,
      Validators.minLength(8),
    ]),
    'passwordConfirmation': FormControl<String>(),
  }, validators: [
    Validators.mustMatch('password', 'passwordConfirmation'),
  ]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.tertiary0,
      appBar: AppBar(
        backgroundColor: AppColors.tertiary0,
        leading: const SizedBox(),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: BlocListener<AuthCubit, AuthState>(
          listenWhen: (previous, current) => previous != current,
          listener: (context, state) {
            if (state is AuthLoading) {
              showSportbooLoader();
            } else {
              closeSportbooLoader();
            }

            if (state is AuthError) {
              showSportbooSnackBar(state.message, (_) {});
            } else if (state is ChangePasswordSuccessful) {
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                  builder: (context) => const SuccessView(
                    message: 'Password reset sucessfully, login to access your account.',
                    buttonTitle: 'Login',
                    nextScreen: LoginView(),
                  ),
                ),
                (_) => false,
              );
            } else {
              closeSportbooLoader();
            }
          },
          child: ReactiveForm(
            formGroup: form,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Reset Password',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      fontSize: 31,
                      color: AppColors.tertiaryBase10,
                    ),
                  ),
                  Gap(16.h),
                  const Text(
                    'Enter new password to access your account',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: AppColors.tertiary8,
                    ),
                  ),
                  Gap(24.h),
                  ReactiveTextField(
                    autocorrect: false,
                    textAlignVertical: TextAlignVertical.center,
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
                      'minLength': (error) => 'The password must have at least 6 characters',
                      'maxLength': (error) => 'The password must have at most 15 characters'
                    },
                  ),
                  Gap(16.h),
                  ReactiveTextField(
                    autocorrect: false,
                    textAlignVertical: TextAlignVertical.center,
                    formControlName: 'passwordConfirmation',
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: !_showHidePassword,
                    style: const TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: AppColors.tertiaryBase10,
                    ),
                    decoration: authFormFieldInputDecoration(
                      hintText: 'Confirm Password',
                      labelText: 'Confirm Password',
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
                      'maxLength': (error) => 'The password must have at most 20 characters',
                      'mustMatch': (error) => 'The password must Match'
                    },
                  ),
                  Gap(24.h),
                  AppButton(
                    text: 'Reset',
                    onTap: () {
                      if (form.valid) {
                        context.read<AuthCubit>().changePassword(password: form.control('passwordConfirmation').value);
                      } else {
                        form.markAsTouched();
                      }
                    },
                  ),
                  Gap(24.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
