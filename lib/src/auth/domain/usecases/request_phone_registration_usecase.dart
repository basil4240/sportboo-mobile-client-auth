import 'package:equatable/equatable.dart';
import 'package:sportboo_mobile_client/core/unils/typedefs.dart';
import 'package:sportboo_mobile_client/core/usecases/usecases.dart';
import 'package:sportboo_mobile_client/src/auth/domain/repos/auth_repo.dart';

class RequestPhoneRegistrationUsecase extends UsecaseWithParams<void, RequestPhoneRegistrationUsecaseParams> {
  final AuthRepo _authRepo;

  RequestPhoneRegistrationUsecase(this._authRepo);

  @override
  ResultFuture call(params) async => await _authRepo.requestPhoneRegistration(phone: params.phone);
  
}

class RequestPhoneRegistrationUsecaseParams extends Equatable {
  final String phone;

  const RequestPhoneRegistrationUsecaseParams({required this.phone});

  @override
  List<Object?> get props => [phone];
  
}