import 'package:reactive_forms/reactive_forms.dart';

import '../../../components/base_viewmodel.dart';

class ResetPasswordViewModel extends BaseViewModel {

  bool _showHidePassword = false;
  bool get showHidePassword => _showHidePassword;

  final form = FormGroup({
    'password': FormControl<String>(
        validators: [Validators.required, Validators.minLength(8)]),
    'passwordConfirmation': FormControl<String>(),
  }, validators: [
    Validators.mustMatch('password', 'passwordConfirmation'),
  ]);


  void toggleShowHidePassword() {
    _showHidePassword = !_showHidePassword;
    notifyListeners();
  }


}