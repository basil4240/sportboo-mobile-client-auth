import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_phone_form_field/reactive_phone_form_field.dart';
import 'package:sportboo_mobile_client/modules/authentication/age_confirmation/age_confirmation_view.dart';
import 'package:sportboo_mobile_client/src/auth/presentation/cubit/auth_cubit.dart';
import 'package:sportboo_mobile_client/src/auth/presentation/view/enter_otp_screen.dart';
import '../../../../components/button_widget.dart';
import '../../../../components/heading_widget.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/unils/utils.dart';

class PhoneVerificationScreen extends StatefulWidget {
  const PhoneVerificationScreen({super.key});

  @override
  State<PhoneVerificationScreen> createState() =>
      _PhoneVerificationScreenState();
}

class _PhoneVerificationScreenState extends State<PhoneVerificationScreen> {
  final form = FormGroup({
    'phone': FormControl<PhoneNumber>(validators: [
      Validators.required,
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
            showSportbooSnackBar(state.message, (_) => null);
          } else if (state is PhoneRegistrationRequestCompleted) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => EnterOtpScreen(
                  nextScreen: const AgeConfirmationView(),
                  otpRecipient:
                      '+${form.control('phone').value.countryCode}${form.control('phone').value.nsn}',
                ),
              ),
            );
          } else {
            closeSportbooLoader();
          }
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: ReactiveForm(
            formGroup: form,
            child: Column(
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
                            'number': (error) => 'Enter a valid phone number',
                            'minLength': (error) =>
                                'Phone number must be 10 digits long',
                            'maxLength': (error) =>
                                'Phone number must be 10 digits long',
                          },
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                        ),
                        const Gap(24),
                      ],
                    ),
                  ),
                ),
                AppButton(
                  text: 'Verify',
                  onTap: () {
                    if (form.valid) {
                      context.read<AuthCubit>().requestPhoneRegistration(phone: '+${form.control('phone').value.countryCode}${form.control('phone').value.nsn}');
                    } else {
                      form.markAllAsTouched();
                    }
                  },
                ),
                const Gap(24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
