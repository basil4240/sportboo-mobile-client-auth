import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_phone_form_field/reactive_phone_form_field.dart';
import '../../../../components/button_widget.dart';
import '../../../../components/heading_widget.dart';
import '../../../../core/theme/colors.dart';
import '../../../../unils/utils.dart';

class PhoneVerificationScreen extends StatefulWidget {
  const PhoneVerificationScreen({super.key});

  @override
  State<PhoneVerificationScreen> createState() =>
      _PhoneVerificationScreenState();
}

class _PhoneVerificationScreenState extends State<PhoneVerificationScreen> {
  FormGroup form() => fb.group({
        'email': FormControl<String>(
            validators: [Validators.required, Validators.email]),
        'phone': FormControl<PhoneNumber>(validators: [
          Validators.required,
        ]),
      });



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
                        if (formGroup.valid) {
                          // send otp
                          showSportbooLoader();
                          // var response = await NetworkServices.sendOTP(
                          //     '${formGroup.control('phoneNumber').value.countryCode}${formGroup.control('phoneNumber').value.nsn}');

                          // if (response.status) {
                          //   closeSportbooLoader();
                          //   showSportbooSnackBar(
                          //       'The OTP Has been sent to your number. ' ?? '',
                          //       (id) {});
                          //   _navigate(
                          //       '${formGroup.control('phoneNumber').value.countryCode}${formGroup.control('phoneNumber').value.nsn}',
                          //       response.data);
                          // } else {
                          //   closeSportbooLoader();
                          //   showSportbooSnackBar(response.message, (id) {});
                          // }
                        } else {
                          formGroup.markAllAsTouched();
                        }
                      }),
                  const Gap(24),
                ],
              );
            },
          ),
        ));
  }

   

  void _navigate(String phone, Map? data) {
    // PageRouter.gotoWidget(
    //     mcontext,
    //     EnterOtpScreen(
    //       nextScreen: const AgeConfirmationView(),
    //       otpRecipient: phone,
    //       data: data,
    //     ));
  }
}
