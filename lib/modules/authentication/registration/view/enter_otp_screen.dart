import 'dart:async';
import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../components/button_widget.dart';
import '../../../../core/theme/colors.dart';
import '../../../../unils/utils.dart';

class EnterOtpScreen extends StatefulWidget {
  const EnterOtpScreen(
      {super.key,
      required this.nextScreen,
      this.fromForgetPassword = false,
      required this.otpRecipient,
      this.data});

  final Map? data;
  final bool fromForgetPassword;
  final Widget nextScreen;
  final String otpRecipient;

  @override
  State<EnterOtpScreen> createState() => _EnterOtpScreenState();
}

class _EnterOtpScreenState extends State<EnterOtpScreen> {
  String pinCode = "";
  BuildContext? mcontext;

  String? _resendsIn;

  @override
  void initState() {
    super.initState();
    // send email verification otp
    if (widget.fromForgetPassword) {
      _run();
    }

    CountdownTimer(
      duration: const Duration(seconds: 60),
      interval: const Duration(seconds: 1),
      onTick: (timeRemaining) {
        setState(() {
          _resendsIn = timeRemaining.inSeconds.toString();
        });

      },
      onFinish: () {
        setState(() {
          _resendsIn = null;
        });
      },
    );
  }

  void _run() async {
    showSportbooLoader();


  }

  @override
  Widget build(BuildContext context) {
    mcontext ??= context;
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
                    color: AppColors.tertiaryBase10),
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
                            color: AppColors.tertiary8)),
                    TextSpan(
                      text: widget.otpRecipient.contains('@')
                          ? widget.otpRecipient
                          : "+${widget.otpRecipient}",
                      style: const TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: AppColors.primaryBase6),
                      recognizer: TapGestureRecognizer()..onTap = () {},
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
                    fontWeight: FontWeight.w700, color: AppColors.tertiary1),
                hintStyle: const TextStyle(
                    color: AppColors.primaryBase6, fontSize: 15),
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
                  onTap: () async {
                    if (pinCode.isNotEmpty) {
                      if (widget.otpRecipient.contains('@')) {
                        // verify email

                      } else {
                        // verify phone
                        showSportbooLoader();

                      }
                    } else {
                      showSportbooSnackBar('Please provide your OTP', (id) {});
                    }
                  }),
              Gap(24.h),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    const TextSpan(
                        text: 'Didn’t get the code? ',
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: AppColors.tertiary8)),
                    if(_resendsIn == null) TextSpan(
                      text: 'Resend Code',
                      style: const TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: AppColors.primaryBase6),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () async {
                          if (widget.fromForgetPassword) {
                            _run();
                            // load

                          }
                          CountdownTimer(
                            duration: const Duration(seconds: 60),
                            interval: const Duration(seconds: 1),
                            onTick: (timeRemaining) {
                              setState(() {
                                _resendsIn = timeRemaining.inSeconds.toString();
                              });

                            },
                            onFinish: () {
                              setState(() {
                                _resendsIn = null;
                              });
                            },
                          );
                        },
                    ),
                    if(_resendsIn != null) TextSpan(
                      text: _resendsIn,
                      style: const TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: AppColors.primaryBase6),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () async {
                          if (widget.fromForgetPassword) {
                            _run();
                            // load
                          }
                        },
                    ),
                    if(_resendsIn != null) TextSpan(
                      text: ' Seconds',
                      style: const TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: AppColors.primaryBase6),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () async {
                          if (widget.fromForgetPassword) {
                            _run();
                            // load
                          }
                        },
                    ),
                  ],
                ),
              ),
              Gap(32.h),
            ],
          ),
        ),
      ),
    );
  }

}

class CountdownTimer {
  final Duration duration;
  final Duration interval;
  final Function(Duration) onTick;
  final Function onFinish;

  CountdownTimer({
    required this.duration,
    required this.interval,
    required this.onTick,
    required this.onFinish,
  }) {
    int elapsedSeconds = 0;

    Timer.periodic(interval, (timer) {
      elapsedSeconds += interval.inSeconds;
      final timeRemaining = duration - Duration(seconds: elapsedSeconds);
      onTick(timeRemaining);

      if (elapsedSeconds >= duration.inSeconds) {
        timer.cancel();
        onFinish();
      }
    });
  }
}
