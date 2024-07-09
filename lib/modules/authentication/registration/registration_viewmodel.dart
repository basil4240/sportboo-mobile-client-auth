import 'package:reactive_forms/reactive_forms.dart';

import '../../../components/base_viewmodel.dart';

class RegistrationViewModel extends BaseViewModel {

  bool _showHidePassword = false;

  bool get showHidePassword => _showHidePassword;

  bool _showAgreeError = false;

  bool get showAgreeError => _showAgreeError;


  final form = FormGroup(
    {
      'fullName': FormControl<String>(validators: [
        Validators.required, Validators.pattern(r'^[A-Za-z\-]+(?: [A-Za-z\-]+)+$')
      ]),
      'agree': FormControl<bool>(validators: [
        Validators.required,
      ]),
      'username': FormControl<String>(validators: [
        Validators.required,
      ]),
      'email': FormControl<String>(
          validators: [Validators.required, Validators.email]),
      'password': FormControl<String>(validators: [
        Validators.required,
        Validators.minLength(8),
        Validators.maxLength(20)
      ]),
    },
  );

  void toggleShowHidePassword() {
    _showHidePassword = !_showHidePassword;
    notifyListeners();
  }

  void toggleShowAgreeError(FormControl control) {
    _showAgreeError = !(control.value ?? true);

    notifyListeners();
  }

  Future<bool> onRegisterUser() async {
    if (form.valid) {
      // show the loading bar
      // showSportbooLoader();

      var fullName = form
          .control('fullName')
          .value;
      var email = form
          .control('email')
          .value;
      var password = form
          .control('password')
          .value;
      var username = form
          .control('username')
          .value;


      return true;

    } else {
      form.markAllAsTouched();
    }

    return false;
  }

}