import 'package:equatable/equatable.dart';
import 'package:sportboo_mobile_client/core/unils/typedefs.dart';
import 'package:sportboo_mobile_client/core/usecases/usecases.dart';
import 'package:sportboo_mobile_client/src/auth/domain/repos/auth_repo.dart';

class VerifyEmailOtpUsecase extends UsecaseWithParams<void, VerifyEmailOtpUsecaseParams> {
  final AuthRepo _authRepo;

  VerifyEmailOtpUsecase(this._authRepo);
  
  @override
  ResultFuture call(params) async => await _authRepo.verifyEmailOtp(otp: params.otp);
  
}

class VerifyEmailOtpUsecaseParams extends Equatable {
  final String otp;

  const VerifyEmailOtpUsecaseParams({required this.otp});

  @override
  List<Object?> get props => [otp];
  
}