import 'package:equatable/equatable.dart';
import 'package:sportboo_mobile_client/core/unils/typedefs.dart';
import 'package:sportboo_mobile_client/core/usecases/usecases.dart';
import 'package:sportboo_mobile_client/src/auth/domain/repos/auth_repo.dart';

class VerifyPhoneNumberUsecase extends UsecaseWithParams<void, VerifyPhoneNumberUsecaseParams> {

  final AuthRepo _authRepo;

  VerifyPhoneNumberUsecase(this._authRepo);
  
  @override
  ResultFuture call(params) async => await _authRepo.verifyPhoneNumber(otp: params.otp);
  
}

class VerifyPhoneNumberUsecaseParams extends Equatable {
  final String otp;

  const VerifyPhoneNumberUsecaseParams({required this.otp});
  
  @override
  List<Object?> get props => [otp];
  
}