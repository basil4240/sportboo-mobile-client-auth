import 'package:equatable/equatable.dart';
import 'package:sportboo_mobile_client/core/unils/typedefs.dart';
import 'package:sportboo_mobile_client/core/usecases/usecases.dart';
import 'package:sportboo_mobile_client/src/auth/domain/entities/sportboo_user_entity.dart';
import 'package:sportboo_mobile_client/src/auth/domain/repos/auth_repo.dart';

class LoginWithFacebookUsecase extends UsecaseWithParams<SportbooUserEntity, LoginWithFacebookParams> {
  final AuthRepo _authRepo;

  LoginWithFacebookUsecase(this._authRepo);
  
  @override
  ResultFuture<SportbooUserEntity> call(params) async => await _authRepo.loginWithFacebook(accessToken: params.accessToken);
  
}

class LoginWithFacebookParams extends Equatable {
  final String accessToken;

  const LoginWithFacebookParams({required this.accessToken});

  @override
  List<Object?> get props => [accessToken];
  
}