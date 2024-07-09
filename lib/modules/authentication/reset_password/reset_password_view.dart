import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:page_transition/page_transition.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:sportboo_mobile_client/modules/authentication/reset_password/reset_password_viewmodel.dart';
import '../../../components/base_widget.dart';
import '../../../components/button_widget.dart';
import '../../../core/theme/colors.dart';
import '../../../unils/utils.dart';
import '../login/login_view.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return BaseWidget<ResetPasswordViewModel>(
      viewModel: ResetPasswordViewModel(),
      builder: (BuildContext context, ResetPasswordViewModel viewModel,
          Widget? child) {

        return Scaffold(
            backgroundColor: AppColors.tertiary0,
            appBar: AppBar(
              backgroundColor: AppColors.tertiary0,
              leading: const SizedBox(),
              elevation: 0,
            ),
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: ReactiveForm(
                  formGroup: viewModel.form,
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
                              color: AppColors.tertiaryBase10),
                        ),
                        Gap(16.h),
                        const Text(
                          'Enter new password to access your account',
                          style: TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: AppColors.tertiary8),
                        ),
                        Gap(24.h),
                        ReactiveTextField(
                          autocorrect: false,
                          textAlignVertical: TextAlignVertical.center,
                          formControlName: 'password',
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: !viewModel.showHidePassword,
                          style: const TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: AppColors.tertiaryBase10),
                          decoration: authFormFieldInputDecoration(
                              hintText: 'Enter Password',
                              labelText: 'Password',
                              context: context,
                              suffixIcon: IconButton(
                                  onPressed: viewModel.toggleShowHidePassword,
                                  icon: viewModel.showHidePassword
                                      ? const Icon(Icons.visibility_off)
                                      : const Icon(Icons.visibility))),
                          validationMessages: {
                            'required': (error) => 'The password must not be empty',
                            'minLength': (error) =>
                            'The password must have at least 6 characters',
                            'maxLength': (error) =>
                            'The password must have at most 15 characters'
                          },
                        ),
                        Gap(16.h),
                        ReactiveTextField(
                          autocorrect: false,
                          textAlignVertical: TextAlignVertical.center,
                          formControlName: 'passwordConfirmation',
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: !viewModel.showHidePassword,
                          style: const TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: AppColors.tertiaryBase10),
                          decoration: authFormFieldInputDecoration(
                              hintText: 'Confirm Password',
                              labelText: 'Confirm Password',
                              context: context,
                              suffixIcon: IconButton(
                                  onPressed: viewModel.toggleShowHidePassword,
                                  icon: viewModel.showHidePassword
                                      ? const Icon(Icons.visibility_off)
                                      : const Icon(Icons.visibility))),
                          validationMessages: {
                            'required': (error) => 'The password must not be empty',
                            'minLength': (error) =>
                            'The password must have at least 8 characters',
                            'maxLength': (error) =>
                            'The password must have at most 20 characters',
                            'mustMatch': (error) =>
                            'The password must Match'
                          },
                        ),
                        Gap(24.h),
                        AppButton(
                          text: 'Reset',
                          onTap: () async {

                            if(viewModel.form.valid) {

                              showSportbooLoader();
                              await Future.delayed(const Duration(seconds: 2));
                              closeSportbooLoader();

                              await _onShowSuccess();
                              await _onShowLogin();

                            } else {
                              viewModel.form.markAsTouched();
                            }
                          },
                        ),
                        Gap(24.h),
                      ],
                    ),
                  )),
            ));
      },
    );
  }

  Future<void> _onShowSuccess() async {

  }

  Future<void> _onShowLogin() async {

  }
}
