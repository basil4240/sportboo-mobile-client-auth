import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_phone_form_field/reactive_phone_form_field.dart';

import '../../../components/base_viewmodel.dart';

class ForgetPasswordViewModel extends BaseViewModel {
  int _index = 0;

  int get index => _index;

  FormGroup form() => fb.group({
        'email': FormControl<String>(
            validators: [Validators.required, Validators.email]),
        'phone': FormControl<PhoneNumber>(
            validators: [Validators.required,]),
      });

  void onIndex(int index) {
    _index = index;
    notifyListeners();
  }
}
