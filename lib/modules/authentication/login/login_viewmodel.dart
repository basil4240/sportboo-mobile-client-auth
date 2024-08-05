import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:provider/provider.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:sportboo_mobile_client/unils/utils.dart';

import '../../../components/base_viewmodel.dart';
import '../../../components/sportboo_snack_bar.dart';
import '../../../core/home/home_page.dart';
import '../../../core/home/sportboo_user_provider.dart';
import '../../../core/io/api/account_services/account_services.dart';
import '../../../core/io/api/handlers/error_handler.dart';
import '../../../core/models/api_response.dart/api_response.dart';
import '../../../core/models/login/request/login_request.dart';
import '../../../core/models/login/response/login_response.dart';
// import '../../../core/models/network_response.dart';
import '../../../core/models/registration/email_verification/resend_otp_request.dart';
import '../../../unils/constant.dart';
import '../../../unils/navigation.dart';
import '../network_service.dart';

class LoginViewModel extends BaseViewModel {
  final AuthenticationService _authenticationService = AuthenticationService();

  final BuildContext context;

  LoginViewModel(this.context);

  bool _showHidePassword = false;

  bool get showHidePassword => _showHidePassword;
  AccountsService accountsService = AccountsService();

  final form = FormGroup(
    {
      'email': FormControl<String>(
          validators: [Validators.required, Validators.email]),
      'password': FormControl<String>(validators: [
        Validators.required,
        Validators.minLength(8),
        Validators.maxLength(20)
      ]),
    },
  );

  Future<void> loginUser() async {
    if (form.valid) {
      LoginRequest request = LoginRequest(
          email: form.control('email').value,
          password: form.control('password').value);
      showSportbooLoader();
      try {
        ApiResponse response =
            await accountsService.login(request).onError((error, stackTrace) {
          ApiResponse(
            message: AppErrorHandler.getErrorMessage(error),
          );
        });

        if (response.isSuccess) {
          LoginResponse resp = LoginResponse.fromJson(response.data!);
          // stateValues.user = resp;
          AppConstants.accessToken = resp.data.accessToken;
          updateAndNavigate(resp);
          PageRouter.gotoWidget(
            context,
            const HomePage(),
          );
        } else if (response.statusCode == 401) {
          if (context.mounted) {
            sendCode(
              context,
              form.control('email').value,
            );
          }
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

                    // width: 200, height: 100,
                    child: SportbooSnackBar(
                        message: response.message.toString(),
                        onView: (id) => () {}),
                  ),
                );
              });
          showSportbooSnackBar(response.message.toString(), (id) => () {});
          return;
        }
      } finally {
        closeSportbooLoader();
      }
    }
  }

  Future<void> onLoginUser() async {
    if (form.valid) {
      // show progressbar
      showSportbooLoader();

      // try to log the user
      var response = await _authenticationService.loginWithEmail(
          email: form.control('email').value,
          password: form.control('password').value);

      if (response.isError) {
        // stop loading bar
        closeSportbooLoader();
        // handle error
        showSportbooSnackBar(response.message, (id) => () {});
        return;
      }

      // stop loading bar
      closeSportbooLoader();

      // update and navigate
      // updateAndNavigate(response);
    } else {
      form.markAllAsTouched();
    }

    return;
  }

  void toggleShowHidePassword() {
    _showHidePassword = !_showHidePassword;
    notifyListeners();
  }

  Future sendCode(BuildContext context, String email) async {
    ResendOtpRequest request = ResendOtpRequest(
      email: email,
    );
    showSportbooLoader();

    ApiResponse response = await accountsService.resendOtp(request);

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

              // width: 200, height: 100,
              child: SportbooSnackBar(
                  message: response.message.toString(), onView: (id) => () {}),
            ),
          );
        });
    showSportbooSnackBar(response.message.toString(), (id) => () {});
  }

  void updateAndNavigate(LoginResponse response) {
    // try to log the user in (ie navigate to home view)
    Provider.of<SportbooUserProvider>(context, listen: false).sportbooUser =
        response.data;

    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => const HomePage()),
      (Route<dynamic> route) =>
          false, // This prevents any previous routes from being kept
    );
  }
}
