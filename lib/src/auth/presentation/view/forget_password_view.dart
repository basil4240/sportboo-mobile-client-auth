import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_phone_form_field/reactive_phone_form_field.dart';
import 'package:sportboo_mobile_client/src/auth/presentation/view/forgot_password_otp_screen.dart';
import 'package:sportboo_mobile_client/src/auth/presentation/cubit/auth_cubit.dart';

import '../../../../components/button_widget.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/unils/utils.dart';
import 'reset_password_view.dart';

class ForgetPasswordView extends StatefulWidget {
  const ForgetPasswordView({super.key});

  @override
  State<ForgetPasswordView> createState() => _ForgetPasswordViewState();
}

class _ForgetPasswordViewState extends State<ForgetPasswordView>
    with SingleTickerProviderStateMixin {
  TabController? _forgotPasswordTabController;
  int index = 0;

  final List<Tab> _forgotPasswordTabs = [
    Tab(
      height: 40.h,
      child: SizedBox(
        width: double.infinity,
        child: Text(
          'Email',
          style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
      ),
    ),
    Tab(
      height: 40.h,
      child: SizedBox(
        width: double.infinity,
        child: Text(
          'Phone',
          style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
      ),
    ),
  ];

  @override
  void initState() {
    super.initState();
    _forgotPasswordTabController =
        TabController(length: _forgotPasswordTabs.length, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _forgotPasswordTabController!.dispose();
  }

  final form = FormGroup({
    'email': FormControl<String>(validators: [
      Validators.required,
      Validators.email,
    ]),
    'phone': FormControl<PhoneNumber>(validators: [
      Validators.required,
      Validators.minLength(10),
      Validators.maxLength(10)
    ]),
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            showSportbooSnackBar(state.message, (_) {});

          } else if (state is ForgetPasswordOtpSent) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ForgetPasswordEnterOtpScreen(
                  nextScreen: const ResetPasswordView(),
                  otpRecipient: index == 0
                      ? form.control('email').value
                      : '+${form.control('phone').value.countryCode}${form.control('phone').value.nsn}',
                ),
              ),
            );
          } else {
            closeSportbooLoader();
          }

        },

        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: SizedBox(
            height: .9.sh,
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: 24.w).copyWith(bottom: 30.h),
              child: ReactiveForm(
                formGroup: form,
                child: Column(
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
                        color: AppColors.tertiaryBase10,
                      ),
                    ),
                    Gap(16.h),
                    Text(
                      'Enter your registered email or phone number (including country code) to reset password',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        fontSize: 16.sp,
                        color: AppColors.tertiary8,
                      ),
                    ),
                    Gap(24.h),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.tertiary3,
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                      child: TabBar(
                        tabs: _forgotPasswordTabs,
                        controller: _forgotPasswordTabController,
                        indicator: BoxDecoration(
                          color: AppColors.primaryBase6,
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        padding: const EdgeInsets.all(4.0),
                        labelPadding: EdgeInsets.zero,
                        unselectedLabelColor: AppColors.primaryBase6,
                        labelColor: kcWhiteColor,
                        dividerColor: kcTransparentColor,
                        onTap: (value) {
                          index = value;
                        },
                      ),
                    ),
                    Gap(32.h),
                    Expanded(
                      child: TabBarView(
                        controller: _forgotPasswordTabController,
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 10.h),
                            child: ReactiveTextField(
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
                                'required': (error) =>
                                    'The email must not be empty',
                                'email': (error) => 'Invalid input'
                              },
                              keyboardType: TextInputType.emailAddress,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 10.h),
                            child: ReactivePhoneFormField<PhoneNumber>(
                              autocorrect: false,
                              textAlignVertical: TextAlignVertical.center,
                              formControlName: 'phone',
                              defaultCountry: IsoCode.NG,
                              flagSize: 18.sp,
                              showFlagInInput: false,
                              countrySelectorNavigator:
                                  CountrySelectorNavigator.bottomSheet(
                                searchBoxTextStyle: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.sp,
                                  color: AppColors.tertiaryBase10,
                                ),
                                titleStyle: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.sp,
                                  color: AppColors.tertiaryBase10,
                                ),
                                subtitleStyle: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.sp,
                                  color: AppColors.tertiary8,
                                ),
                              ),
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                fontSize: 16.sp,
                                color: AppColors.tertiaryBase10,
                              ),
                              countryCodeStyle: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                fontSize: 16.sp,
                                color: AppColors.primaryBase6,
                              ),
                              decoration: authFormFieldInputDecoration(
                                hintText: 'Enter Phone Number',
                                labelText: 'Phone Number',
                                context: context,
                              ),
                              validationMessages: {
                                'required': (error) => 'This field is required',
                                'number': (error) =>
                                    'Enter a valid phone number',
                                'minLength': (error) =>
                                    'Phone number must be 10 digits long',
                                'maxLength': (error) =>
                                    'Phone number must be 10 digits long',
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Gap(64.h),
                    AppButton(
                      text: 'Send',
                      onTap: () {
                        if (index == 0) {
                          // validate email
                          var emailControl = form.control('email');

                          if (emailControl.hasErrors) {
                            emailControl.markAllAsTouched();
                          } else {
                            // Send forgot password otp
                            context.read<AuthCubit>().requestForgotPasswordOtpToEmail(email: emailControl.value);
                          }
                        } else {
                          // validate phone
                          var phoneControl = form.control('phone');

                          if (phoneControl.hasErrors) {
                            phoneControl.markAllAsTouched();
                          } else {
                            context.read<AuthCubit>().requestForgotPasswordOtpToPhone(phone: phoneControl.value);
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
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
