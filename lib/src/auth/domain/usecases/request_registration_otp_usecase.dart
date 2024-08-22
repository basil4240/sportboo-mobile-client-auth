import 'package:equatable/equatable.dart';
import 'package:sportboo_mobile_client/core/unils/typedefs.dart';
import 'package:sportboo_mobile_client/core/usecases/usecases.dart';
import 'package:sportboo_mobile_client/src/auth/domain/repos/auth_repo.dart';

class RequestRegistrationOtpUsecase extends UsecaseWithParams<void, RegistrationOtpUsecaseParams> {
  
  final AuthRepo _authRepo;

  RequestRegistrationOtpUsecase(this._authRepo);

  @override
  ResultFuture call(params) async => await _authRepo.requestRegistrationOtp(email: params.email);
  
}

class RegistrationOtpUsecaseParams extends Equatable {

  final String email;

  const RegistrationOtpUsecaseParams({required this.email});

  @override
  List<Object?> get props => [email];
  
}