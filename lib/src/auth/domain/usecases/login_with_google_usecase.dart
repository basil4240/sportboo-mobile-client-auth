import 'package:equatable/equatable.dart';
import 'package:sportboo_mobile_client/core/unils/typedefs.dart';
import 'package:sportboo_mobile_client/core/usecases/usecases.dart';
import 'package:sportboo_mobile_client/src/auth/domain/entities/sportboo_user_entity.dart';
import 'package:sportboo_mobile_client/src/auth/domain/repos/auth_repo.dart';

class LoginWithGoogleUsecase extends UsecaseWithParams<SportbooUserEntity, LoginWithGoogleParams> {

  final AuthRepo _authRepo;

  LoginWithGoogleUsecase(this._authRepo);

  @override
  ResultFuture<SportbooUserEntity> call(params) async => await _authRepo.loginWithGoogle(idToken: params.idToken);
  
}

class LoginWithGoogleParams extends Equatable {
  final String idToken;

  const LoginWithGoogleParams({required this.idToken});
  
  @override
  List<Object?> get props => [idToken];
  
}