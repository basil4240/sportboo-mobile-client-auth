import 'package:equatable/equatable.dart';
import 'package:sportboo_mobile_client/core/unils/typedefs.dart';
import 'package:sportboo_mobile_client/core/usecases/usecases.dart';
import 'package:sportboo_mobile_client/src/auth/domain/repos/auth_repo.dart';

class ChangePasswordUsecase extends UsecaseWithParams<void, ChangePasswordParams> {
  final AuthRepo _authRepo;

  ChangePasswordUsecase(this._authRepo);

  @override
  ResultFuture call(params) async => await _authRepo.changePassword(password: params.password);
  
}

class ChangePasswordParams extends Equatable {
  final String password;

  const ChangePasswordParams({required this.password});
  
  @override
  List<Object?> get props => [password];
  
}