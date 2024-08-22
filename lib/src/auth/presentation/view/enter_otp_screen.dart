import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:sportboo_mobile_client/src/auth/presentation/cubit/auth_cubit.dart';

import '../../../../components/button_widget.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/unils/utils.dart';

class EnterOtpScreen extends StatefulWidget {
  const EnterOtpScreen({
    super.key,
    required this.nextScreen,
    required this.otpRecipient,
  });

  final Widget nextScreen;
  final String otpRecipient;

  @override
  State<EnterOtpScreen> createState() => _EnterOtpScreenState();
}

class _EnterOtpScreenState extends State<EnterOtpScreen>
    with TickerProviderStateMixin {
  String pinCode = "";

  AnimationController? _controller;

  String get timerString {
    Duration duration = _controller!.duration! * _controller!.value;
    return '${(duration.inSeconds % 60).toString().padLeft(2, '0')} Seconds';
  }

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 60),
    );

    _controller!
        .reverse(from: _controller!.value == 0.0 ? 1.0 : _controller!.value);
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

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
          } else{
            closeSportbooLoader();
          }

          if (state is AuthError) {
            showSportbooSnackBar(state.message, (_) {});

          } else if (state is EmailVerified || state is PhoneNumberVerified) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => widget.nextScreen,
              ),
            );
          } else {
            closeSportbooLoader();
          }
        },
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  getSvg('email_svg'),
                  height: 149.h,
                  width: 160.h,
                ),
                Gap(64.h),
                const Text(
                  'Enter OTP',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    fontSize: 31,
                    color: AppColors.tertiaryBase10,
                  ),
                ),
                Gap(16.h),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: 'We have sent a verification code to ',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: AppColors.tertiary8,
                        ),
                      ),
                      TextSpan(
                        text: widget.otpRecipient.contains('@')
                            ? widget.otpRecipient
                            : "+${widget.otpRecipient}",
                        style: const TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: AppColors.primaryBase6,
                        ),
                      ),
                    ],
                  ),
                ),
                Gap(24.h),
                PinCodeTextField(
                  appContext: context,
                  length: 4,
                  obscureText: false,
                  hintCharacter: '●',
                  cursorColor: AppColors.primaryBase6,
                  textStyle: getTextTheme(context).bodySmall!.copyWith(
                        fontWeight: FontWeight.w700,
                        color: AppColors.tertiary1,
                      ),
                  hintStyle: const TextStyle(
                    color: AppColors.primaryBase6,
                    fontSize: 15,
                  ),
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(16),
                    fieldOuterPadding: EdgeInsets.zero,
                    fieldHeight: 56,
                    fieldWidth: 68,
                    activeFillColor: AppColors.primaryBase6,
                    inactiveFillColor: AppColors.tertiary1,
                    inactiveColor: AppColors.primaryBase6,
                    activeColor: AppColors.primaryBase6,
                    selectedColor: AppColors.primaryBase6,
                    selectedFillColor: AppColors.tertiary1,
                  ),
                  keyboardType: TextInputType.number,
                  animationDuration: const Duration(milliseconds: 300),
                  enableActiveFill: true,
                  onCompleted: (value) {
                    log(value);
                    if (value.length == 4) {
                      setState(() {
                        pinCode = value;
                      });
                    } else {
                      pinCode = '';
                    }
                  },
                  onChanged: (value) {
                    if (value.length == 4) {
                      setState(() {
                        pinCode = value;
                      });
                    } else {
                      pinCode = '';
                    }
                  },
                ),
                Gap(64.h),
                AppButton(
                    text: 'Submit',
                    onTap: () {
                      if (pinCode.isNotEmpty) {
                        if (widget.otpRecipient.contains('@')) {
                          // verify email
                          context
                              .read<AuthCubit>()
                              .verifyEmailOtp(otp: pinCode);
                        } else {
                          // verify phone
                          context
                              .read<AuthCubit>()
                              .verifyPhoneNumber(otp: pinCode);
                        }
                      } else {
                        showSportbooSnackBar('Please input your OTP', (_) {});
                      }
                    }),
                Gap(24.h),
                AnimatedBuilder(
                  animation: _controller!,
                  builder: (BuildContext context, Widget? child) {
                    return RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          const TextSpan(
                            text: 'Didn’t get the code? ',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: AppColors.tertiary8,
                            ),
                          ),
                          timerString == '00 Seconds'
                              ? TextSpan(
                                  text: 'Resend Code',
                                  style: const TextStyle(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: AppColors.primaryBase6,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      if (widget.otpRecipient.contains('@')) {
                                        //resend otp to email
                                        context
                                            .read<AuthCubit>()
                                            .requestRegistrationOtp(
                                                email: widget.otpRecipient);
                                      } else {
                                        //resend otp to phone
                                        context
                                            .read<AuthCubit>()
                                            .requestPhoneRegistration(
                                                phone: widget.otpRecipient);
                                      }

                                      _controller!.reverse(
                                          from: _controller!.value == 0.0
                                              ? 1.0
                                              : _controller!.value);
                                    },
                                )
                              : TextSpan(
                                  text: timerString,
                                  style: const TextStyle(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: AppColors.primaryBase6,
                                  ),
                                ),
                        ],
                      ),
                    );
                  },
                ),
                Gap(32.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
