import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:gap/gap.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_phone_form_field/reactive_phone_form_field.dart';
import 'package:sportboo_mobile_client/core/models/registration/phone_verification.dart/phone_otp/phone_otp_request.dart';
import '../../../../components/button_widget.dart';
import '../../../../components/heading_widget.dart';
import '../../../../components/sportboo_snack_bar.dart';
import '../../../../core/io/api/account_services/account_services.dart';
import '../../../../core/io/api/handlers/error_handler.dart';
import '../../../../core/models/api_response.dart/api_response.dart';
import '../../../../core/models/registration/response/user_registration_response.dart';
import '../../../../core/theme/colors.dart';
import '../../../../unils/navigation.dart';
import '../../../../unils/utils.dart';
import '../../age_confirmation/age_confirmation_view.dart';
import 'enter_otp_screen.dart';

class PhoneVerificationScreen extends StatefulWidget {
  final int userId;
  const PhoneVerificationScreen({super.key, required this.userId});

  @override
  State<PhoneVerificationScreen> createState() =>
      _PhoneVerificationScreenState();
}

class _PhoneVerificationScreenState extends State<PhoneVerificationScreen> {
  FormGroup form() => fb.group({
        'phone': FormControl<PhoneNumber>(validators: [
          Validators.required,
        ]),
      });
  AccountsService accountsService = AccountsService();

  @override
  void initState() {
    super.initState();
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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: ReactiveFormBuilder(
            form: form,
            builder:
                (BuildContext context, FormGroup formGroup, Widget? child) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const HeadingWidget(
                            'Phone Verification',
                            subheading: 'Verify your phone number to continue',
                          ),
                          const Gap(16),
                          ReactivePhoneFormField<PhoneNumber>(
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
                                  color: AppColors.tertiaryBase10),
                              titleStyle: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.sp,
                                  color: AppColors.tertiaryBase10),
                              subtitleStyle: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.sp,
                                  color: AppColors.tertiary8),
                            ),
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                fontSize: 16.sp,
                                color: AppColors.tertiaryBase10),
                            countryCodeStyle: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                fontSize: 16.sp,
                                color: AppColors.primaryBase6),
                            decoration: authFormFieldInputDecoration(
                                hintText: 'Enter Phone Number',
                                labelText: 'Phone Number',
                                context: context),
                            validationMessages: {
                              'required': (error) => 'This field is required',
                              'number': (error) => 'Enter a valid phone number',
                            },
                          ),
                          const Gap(24),
                        ],
                      ),
                    ),
                  ),
                  AppButton(
                      text: 'Verify',
                      onTap: () async {
                        // if (formGroup.valid) {
                        // send otp
                        showSportbooLoader();
                        submit(
                            '+${formGroup.control('phone').value.countryCode}${formGroup.control('phone').value.nsn}',
                            widget.userId);
                        // } else {
                        //   formGroup.markAllAsTouched();
                        // }
                      }),
                  const Gap(24),
                ],
              );
            },
          ),
        ));
  }

  Future submit(
    String phone,
    int userId,
  ) async {
    PhoneOtpRequest request = PhoneOtpRequest(phone: phone, userId: userId);
    showSportbooLoader();

    ApiResponse response = await accountsService
        .registerPhone(request)
        .onError((error, stackTrace) {
      ApiResponse(
        message: AppErrorHandler.getErrorMessage(error),
      );
    });

    if (response.isSuccess) {
      closeSportbooLoader();
      closeSportbooLoader();

      log(response.data.toString());
      _navigate(phone, userId);
    } else {
      closeSportbooLoader();
      SmartDialog.showNotify(
          alignment: Alignment.topCenter,
          msg: response.message.toString(),
          notifyType: NotifyType.error,
          displayTime: const Duration(seconds: 4),
          builder: (_) {
            return SafeArea(
              child: Container(
                margin: const EdgeInsets.fromLTRB(16, 5, 16, 0),
                child: SportbooSnackBar(
                    message: response.message.toString(),
                    onView: (id) => () {}),
              ),
            );
          });
      showSportbooSnackBar(response.message.toString(), (id) => () {});
    }
  }

  void _navigate(String phone, int userId) {
    PageRouter.gotoWidget(
        context,
        EnterOtpScreen(
          nextScreen: const AgeConfirmationView(),
          otpRecipient: phone,
          data: UserRegistrationData(
              userId: userId, fullname: '', email: '', sportbooId: ''),
          from: 'phone',
        ));
  }
}
