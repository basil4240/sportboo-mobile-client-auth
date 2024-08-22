import 'package:dartz/dartz.dart';
import 'package:sportboo_mobile_client/core/errors/exception.dart';
import 'package:sportboo_mobile_client/core/errors/failures.dart';
import 'package:sportboo_mobile_client/core/unils/typedefs.dart';
import 'package:sportboo_mobile_client/src/auth/data/datasources/auth_remote_datasource.dart';
import 'package:sportboo_mobile_client/src/auth/domain/entities/registered_user_entity.dart';
import 'package:sportboo_mobile_client/src/auth/domain/entities/sportboo_user_entity.dart';
import 'package:sportboo_mobile_client/src/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final AuthRemoteDatasource _authRemoteDataSource;

  AuthRepoImpl(this._authRemoteDataSource);
  @override
  ResultFuture<SportbooUserEntity> loginWithEmail({required String email, required String password}) async {
    try {
      final result = await _authRemoteDataSource.loginWithEmail(email: email, password: password);
      return Right(result);
    }  on ServerException catch (e) {
      return Left(ServerFailure(message: e.message, statusCode: e.statusCode));
    }
  }
  
  @override
  ResultFuture<void> requestRegistrationOtp({required String email}) async {
    try {
      await _authRemoteDataSource.requestRegistrationOtp(email: email);

      return const Right(null);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message, statusCode: e.statusCode));
    }
  }
  
  @override
  ResultFuture<void> verifyEmailOtp({required String otp}) async {
    try {
      await _authRemoteDataSource.verifyEmailOtp(otp: otp);

      return const Right(null);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message, statusCode: e.statusCode));
    }
  }
  
  @override
  ResultFuture<void> requestPhoneRegistration({required String phone}) async {
    try {
      await _authRemoteDataSource.requestPhoneRegistration(phone: phone);

      return const Right(null);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message, statusCode: e.statusCode));
    }
  }
  
  @override
  ResultFuture<void> verifyPhoneNumber({required String otp}) async {
    try {
      await _authRemoteDataSource.verifyPhoneNumber(otp: otp);

      return const Right(null);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message, statusCode: e.statusCode));
    }
  }
  
  @override
  ResultFuture<RegisteredUserEntity> registerUser({required String fullname, required String email, required String password, required String username}) async {
    try {
      final result = await _authRemoteDataSource.registerUser(
        fullname: fullname, 
        email: email, 
        password: password, 
        username: username,
      );

      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message, statusCode: e.statusCode));
    }
  }
  
  @override
  ResultFuture<void> requestForgotPasswordOtpToEmail({required String email}) async {
    try {
      await _authRemoteDataSource.requestForgotPasswordOtpToEmail(email: email);

      return const Right(null);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message, statusCode: e.statusCode));
    }
  }
  
  @override
  ResultFuture<void> requestForgotPasswordOtpToPhone({required String phone}) async {
    try {
      await _authRemoteDataSource.requestForgotPasswordOtpToPhone(phone: phone);

      return const Right(null);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message, statusCode: e.statusCode));
    }
  }
  
  @override
  ResultFuture<void> verifyForgetPasswordOtp({required String otp}) async {
    try {
      await _authRemoteDataSource.verifyForgetPasswordOtp(otp: otp);

      return const Right(null);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message, statusCode: e.statusCode));
    }
  }
  
  @override
  ResultFuture<void> changePassword({required String password}) async {
    try {
      await _authRemoteDataSource.changePassword(password: password);

      return const Right(null);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message, statusCode: e.statusCode));
    }
  }
  
  @override
  ResultFuture<SportbooUserEntity> loginWithGoogle({required String idToken}) async {
    try {
      final result = await _authRemoteDataSource.loginWithGoogle(idToken: idToken);

      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message, statusCode: e.statusCode));
    }
  }
  
}