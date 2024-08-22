import 'package:equatable/equatable.dart';
import 'package:sportboo_mobile_client/core/unils/typedefs.dart';
import 'package:sportboo_mobile_client/core/usecases/usecases.dart';
import 'package:sportboo_mobile_client/src/auth/domain/entities/registered_user_entity.dart';
import 'package:sportboo_mobile_client/src/auth/domain/repos/auth_repo.dart';

class RegisterUserUsecase extends UsecaseWithParams<RegisteredUserEntity, RegisterUserUsecaseParams> {
  
  final AuthRepo _authRepo;

  RegisterUserUsecase(this._authRepo);

  @override
  ResultFuture<RegisteredUserEntity> call(RegisterUserUsecaseParams params) async => await _authRepo.registerUser(fullname: params.fullname, email: params.email, password: params.password, username: params.username);
  
}

class RegisterUserUsecaseParams extends Equatable {
  final String fullname;
  final String email;
  final String password;
  final String username;

  const RegisterUserUsecaseParams(this.fullname, this.email, this.password, this.username);

  @override
  List<Object?> get props => [fullname, email, password, username];
  
}