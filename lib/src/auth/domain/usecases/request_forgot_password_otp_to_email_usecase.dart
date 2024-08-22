import 'package:equatable/equatable.dart';
import 'package:sportboo_mobile_client/core/unils/typedefs.dart';
import 'package:sportboo_mobile_client/core/usecases/usecases.dart';
import 'package:sportboo_mobile_client/src/auth/domain/repos/auth_repo.dart';

class RequestForgotPasswordOtpToEmailUsecase extends UsecaseWithParams<void, RequestForgotPasswordOtpToEmailParams> {
  final AuthRepo _authRepo;

  RequestForgotPasswordOtpToEmailUsecase(this._authRepo);
  
  @override
  ResultFuture call(RequestForgotPasswordOtpToEmailParams params) async => await _authRepo.requestForgotPasswordOtpToEmail(email: params.email);
  
}

class RequestForgotPasswordOtpToEmailParams extends Equatable {
  final String email;

  const RequestForgotPasswordOtpToEmailParams({required this.email});
  
  @override
  List<Object?> get props => [email];
  
}