import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:page_transition/page_transition.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../components/base_widget.dart';
import '../../../components/button_widget.dart';
import '../../../core/theme/colors.dart';
import '../../../unils/utils.dart';
import '../registration/view/enter_otp_screen.dart';
import '../reset_password/reset_password_view.dart';
import 'forget_password_viewmodel.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseWidget<ForgetPasswordViewModel>(
      builder: (BuildContext context, ForgetPasswordViewModel viewModel,
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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: ReactiveFormBuilder(
                form: viewModel.form,
                builder:
                    (BuildContext context, FormGroup formGroup, Widget? child) {
                  return Column(
                    children: [
                      Image.asset(
                        getImage('forgot_password'),
                        height: 117.h,
                        width: 136.w,
                      ),
                      Gap(64.h),
                      Text(
                        'Forget Password',
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            fontSize: 31.sp,
                            color: AppColors.tertiaryBase10),
                      ),
                      Gap(16.h),
                      Text(
                        'Enter your registered email or phone number (including country code) to reset password',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                            color: AppColors.tertiary8),
                      ),
                      Gap(24.h),

                      // ProfileTabView(
                      //   onIndex: viewModel.onIndex,
                      // ),
                      Gap(64.h),
                      AppButton(
                        text: 'Send',
                        onTap: () {
                          if (viewModel.index == 0) {
                            // validate email
                            var emailControl = formGroup.control('email');
                            if (emailControl.hasErrors) {
                              emailControl.markAllAsTouched();
                            } else {
                              // navigate to verify OTP
                              Navigator.of(context).pushReplacement(
                                PageTransition(
                                  type: PageTransitionType.fade,
                                  child: EnterOtpScreen(
                                    nextScreen: ResetPasswordView(),
                                    fromForgetPassword: true,
                                    otpRecipient: emailControl.value,
                                  ),
                                ),
                              );
                            }
                          } else {
                            // validate phone
                            var phoneControl = formGroup.control('phone');
                            if (phoneControl.hasErrors) {
                              phoneControl.markAllAsTouched();
                            } else {

                              // navigate to verify OTP
                              Navigator.of(context).pushReplacement(
                                PageTransition(
                                  type: PageTransitionType.fade,
                                  child: EnterOtpScreen(
                                    nextScreen: ResetPasswordView(),
                                    fromForgetPassword: true,
                                    otpRecipient:
                                    '${phoneControl.value.countryCode}${phoneControl.value.nsn}',
                                  ),
                                ),
                              );
                            }
                          }
                        },
                      ),
                      Gap(16.h),
                      AppButton(
                        text: 'Cancel',
                        onTap: () => Navigator.of(context).pop(),
                        outlined: true,
                        fillColor: AppColors.primary1,
                      ),
                      Gap(32.h),
                    ],
                  );
                },
              ),
            ),
          ),
        );
      },
      viewModel: ForgetPasswordViewModel(),
    );
  }
}
