import 'package:equatable/equatable.dart';
import 'package:sportboo_mobile_client/core/unils/typedefs.dart';
import 'package:sportboo_mobile_client/core/usecases/usecases.dart';
import 'package:sportboo_mobile_client/src/auth/domain/entities/sportboo_user_entity.dart';
import 'package:sportboo_mobile_client/src/auth/domain/repos/auth_repo.dart';

class LoginWithEmailUsecase extends UsecaseWithParams<SportbooUserEntity, LoginWithEmailParams> {

  final AuthRepo _authRepo;

  LoginWithEmailUsecase(this._authRepo);
  
  @override
  ResultFuture<SportbooUserEntity> call(LoginWithEmailParams params) async => await _authRepo.loginWithEmail(email: params.email, password: params.password);
  
}

class LoginWithEmailParams extends Equatable {

  final String email;
  final String password;

  const LoginWithEmailParams({required this.email, required this.password});
  
  @override
  List<Object?> get props => [email, password];
  
}