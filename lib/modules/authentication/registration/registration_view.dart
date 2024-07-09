import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:sportboo_mobile_client/modules/authentication/registration/registration_viewmodel.dart';
import '../../../components/base_widget.dart';
import '../../../components/button_widget.dart';
import '../../../components/heading_widget.dart';
import '../../../core/theme/colors.dart';
import '../../../unils/navigation.dart';
import '../../../unils/utils.dart';
import '../login/login_view.dart';

class RegistrationView extends StatelessWidget {
  RegistrationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return BaseWidget<RegistrationViewModel>(
      viewModel: RegistrationViewModel(),
      builder: (BuildContext context, RegistrationViewModel viewModel,
          Widget? child) {
        return Scaffold(
          resizeToAvoidBottomInset: true,
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
              child: ReactiveForm(
                formGroup: viewModel.form,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const HeadingWidget(
                      'Sign up',
                      subheading: 'Create your account to get started.',
                    ),
                    Gap(32.h),
                    ReactiveTextField(
                      autocorrect: false,
                      textAlignVertical: TextAlignVertical.center,
                      formControlName: 'fullName',
                      style: const TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: AppColors.tertiaryBase10),
                      decoration: authFormFieldInputDecoration(
                          hintText: 'Enter Full name',
                          labelText: 'Full Name(John Doe)',
                          context: context),
                      validationMessages: {
                        'required': (error) => 'Full name required',
                        'pattern': (error) => 'Invalid full name'
                      },
                      keyboardType: TextInputType.emailAddress,
                    ),
                    Gap(24.h),
                    ReactiveTextField(
                      autocorrect: false,
                      formControlName: 'username',
                      style: const TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: AppColors.tertiaryBase10),
                      decoration: authFormFieldInputDecoration(
                          hintText: 'Enter Username',
                          labelText: 'Username',
                          context: context),
                      validationMessages: {
                        'required': (error) => 'Username field is required',
                      },
                      keyboardType: TextInputType.emailAddress,
                    ),
                    Gap(24.h),
                    ReactiveTextField(
                      autocorrect: false,
                      formControlName: 'email',
                      style: const TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: AppColors.tertiaryBase10),
                      decoration: authFormFieldInputDecoration(
                          hintText: 'Enter Email',
                          labelText: 'Email',
                          context: context),
                      validationMessages: {
                        'required': (error) => 'The email must not be empty',
                        'email': (error) => 'Invalid input'
                      },
                      keyboardType: TextInputType.emailAddress,
                    ),
                    Gap(24.h),
                    ReactiveTextField(
                      autocorrect: false,
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
                            'The password must have at least 8 characters',
                        'maxLength': (error) =>
                            'The password must have at most 20 characters'
                      },
                    ),
                    Gap(16.h),
                    ReactiveCheckboxListTile(
                      formControlName: 'agree',
                      title: RichText(
                        text: TextSpan(
                          children: [
                            const TextSpan(
                                text:
                                    'Confirm you are 18 or above, agree to the ',
                                style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13,
                                    color: AppColors.tertiaryBase10)),
                            TextSpan(
                              text: 'Terms & Conditions',
                              style: const TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                  color: AppColors.primaryBase6),
                              recognizer: TapGestureRecognizer()..onTap = () {},
                            ),
                            const TextSpan(
                                text: ' and ',
                                style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13,
                                    color: AppColors.tertiaryBase10)),
                            TextSpan(
                              text: 'Privacy policy',
                              style: const TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                  color: AppColors.primaryBase6),
                              recognizer: TapGestureRecognizer()..onTap = () {},
                            ),
                          ],
                        ),
                      ),
                      dense: true,
                      checkColor: AppColors.tertiary1,
                      activeColor: AppColors.primaryBase6,
                      visualDensity: VisualDensity.compact,
                      contentPadding: EdgeInsets.zero,
                      controlAffinity: ListTileControlAffinity.leading,
                      subtitle: Padding(
                        padding: EdgeInsets.only(top: 6.0.h),
                        child: viewModel.showAgreeError
                            ? const Text('You must consent to this',
                                style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: AppColors.dangerBase3))
                            : null,
                      ),
                      onChanged: viewModel.toggleShowAgreeError,
                    ),
                    Gap(16.h),
                    AppButton(
                        text: 'Continue',
                        onTap: () async {

                            var result = await viewModel.onRegisterUser();

                            if (result) {

                            }

                        }),
                    Gap(24.h),
                    Center(
                      child: RichText(
                        text: TextSpan(
                          children: [
                            const TextSpan(
                                text: 'Already have an account? ',
                                style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: AppColors.tertiary9)),
                            TextSpan(
                              text: 'Login',
                              style: const TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: AppColors.primaryBase6),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => PageRouter.gotoWidget(
                                      context, const LoginView(),
                                    ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Gap(32.h),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

}

class AppCheckWidget extends StatefulWidget {
  const AppCheckWidget({super.key});

  @override
  State<AppCheckWidget> createState() => _AppCheckWidgetState();
}

class _AppCheckWidgetState extends State<AppCheckWidget> {
  var value = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          value = !value;
        });
      },
      child: Container(
        height: 24,
        width: 24,
        decoration: BoxDecoration(
            color: value ? AppColors.primaryBase6 : null,
            borderRadius: BorderRadius.circular(4),
            border: value
                ? null
                : Border.all(
                    color: AppColors.tertiary5,
                  )),
        child: Center(
            child: SvgPicture.asset(
          getSvg('check'),
          height: 8,
          width: 10,
        )),
      ),
    );
  }
}
