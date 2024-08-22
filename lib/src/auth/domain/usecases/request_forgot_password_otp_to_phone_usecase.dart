import 'package:equatable/equatable.dart';
import 'package:sportboo_mobile_client/core/unils/typedefs.dart';
import 'package:sportboo_mobile_client/core/usecases/usecases.dart';
import 'package:sportboo_mobile_client/src/auth/domain/repos/auth_repo.dart';

class RequestForgotPasswordOtpToPhoneUsecase extends UsecaseWithParams<void, RequestForgotPasswordOtpToPhoneParams> {
  final AuthRepo _authRepo;

  RequestForgotPasswordOtpToPhoneUsecase(this._authRepo);
  
  @override
  ResultFuture call(RequestForgotPasswordOtpToPhoneParams params) async => await _authRepo.requestForgotPasswordOtpToPhone(phone: params.phone);
  
}

class RequestForgotPasswordOtpToPhoneParams extends Equatable {
  final String phone;

  const RequestForgotPasswordOtpToPhoneParams({required this.phone});
  
  @override
  List<Object?> get props => [phone];
  
}