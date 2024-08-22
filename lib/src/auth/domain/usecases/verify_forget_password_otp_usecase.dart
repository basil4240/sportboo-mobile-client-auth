import 'package:equatable/equatable.dart';
import 'package:sportboo_mobile_client/core/unils/typedefs.dart';
import 'package:sportboo_mobile_client/core/usecases/usecases.dart';
import 'package:sportboo_mobile_client/src/auth/domain/repos/auth_repo.dart';

class VerifyForgetPasswordOtpUsecase extends UsecaseWithParams<void, VerifyForgetPasswordOtpParams> {
  final AuthRepo _authRepo;

  VerifyForgetPasswordOtpUsecase(this._authRepo);
  
  @override
  ResultFuture call(params) async => await _authRepo.verifyForgetPasswordOtp(otp: params.otp);
  
}

class VerifyForgetPasswordOtpParams extends Equatable {
  final String otp;

  const VerifyForgetPasswordOtpParams({required this.otp});

  @override
  List<Object?> get props => [otp];
  
}