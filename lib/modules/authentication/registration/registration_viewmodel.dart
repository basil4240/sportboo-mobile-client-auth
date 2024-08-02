import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:sportboo_mobile_client/core/models/registration/response/user_registration_response.dart';
import 'package:sportboo_mobile_client/core/models/validate_username/request/validate_username_request.dart';
import 'package:sportboo_mobile_client/core/models/validate_username/response/validate_username_response.dart';

import '../../../components/base_viewmodel.dart';
import '../../../core/io/api/account_services/account_services.dart';
import '../../../core/io/api/handlers/error_handler.dart';
import '../../../core/models/api_response.dart/api_response.dart';
import '../../../core/models/registration/request/user_registration_request.dart';
import '../../../unils/navigation.dart';
import '../../../unils/utils.dart';
import 'view/enter_otp_screen.dart';

class RegistrationViewModel extends BaseViewModel {
  bool _showHidePassword = false;

  bool get showHidePassword => _showHidePassword;

  bool _showAgreeError = false;

  bool get showAgreeError => _showAgreeError;

  AccountsService accountsService = AccountsService();

  final form = FormGroup({
    'fullName': FormControl<String>(validators: [
      Validators.required,
      Validators.pattern(r'^[A-Za-z\-]+(?: [A-Za-z\-]+)+$')
    ]),
    'agree': FormControl<bool>(validators: [
      Validators.required,
    ]),
    'username': FormControl<String>(validators: [
      Validators.required,
      Validators.minLength(3),
    ]),
    'email': FormControl<String>(
        validators: [Validators.required, Validators.email]),
    'password': FormControl<String>(validators: [
      Validators.required,
      Validators.minLength(8),
      Validators.maxLength(20)
    ]),
  }, asyncValidators: [
    UsernameAsyncValidator()
  ]);

  void toggleShowHidePassword() {
    _showHidePassword = !_showHidePassword;
    notifyListeners();
  }

  void toggleShowAgreeError(FormControl control) {
    _showAgreeError = !(control.value ?? true);

    notifyListeners();
  }

  Future onRegisterUser(BuildContext context) async {
    if (form.valid) {
      UserRegistrationRequest request = UserRegistrationRequest(
          email: form.control('email').value,
          password: form.control('password').value,
          fullname: form.control('fullName').value,
          username: form.control('username').value);
      showSportbooLoader();
      try {
        ApiResponse response = await accountsService
            .registerUser(request)
            .onError((error, stackTrace) {
          ApiResponse(
            message: AppErrorHandler.getErrorMessage(error),
          );
        });

        if (response.isSuccess) {
          UserRegistrationResponse resp =
              UserRegistrationResponse.fromJson(response.data!);
          if (context.mounted) {
            PageRouter.gotoWidget(
              context,
              EnterOtpScreen(
                otpRecipient: form.control('email').value,
                data: resp.data,
              ),
            );
          }
        } else if (response.isSuccess == false) {
          log(":::::");

          // ScaffoldMessenger.of(context).showSnackBar(
          //   SnackBar(
          //     content: Text(response.message.toString()),
          //   ),
          // );

          showSportbooSnackBar(response.message.toString(), (_) {});

          closeSportbooLoader();
        }
      } finally {
        closeSportbooLoader();
      }
    }
  }
}

class UsernameAsyncValidator extends AsyncValidator<dynamic> {
  AccountsService accountsService = AccountsService();

  @override
  Future<Map<String, dynamic>?> validate(
      AbstractControl<dynamic> control) async {
    // final error = {'unique': false};
    var username = control.value['username'];
    log("::::::::::$username::::::::");

    final response = await usernameValidator(username);

    if (response.message != 'Successful') {
      control.markAsTouched();
      return {response.message: false};
    }

    return null;
  }

  Future<ValidateUsernameResponse> usernameValidator(String value) async {
    ValidateUsernameRequest request = ValidateUsernameRequest(username: value);

    log(':::::::::::::::');

    ApiResponse response = await accountsService
        .validateUsername(request)
        .onError((error, stackTrace) {
      ApiResponse(
        message: AppErrorHandler.getErrorMessage(error),
      );
    });

    ValidateUsernameResponse resp =
        ValidateUsernameResponse.fromJson(response.data!);
    log(":::::::$resp");
    return resp;
  }
}
