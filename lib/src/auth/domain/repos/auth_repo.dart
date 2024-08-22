import 'package:sportboo_mobile_client/core/unils/typedefs.dart';
import 'package:sportboo_mobile_client/src/auth/domain/entities/registered_user_entity.dart';

import '../entities/sportboo_user_entity.dart';

abstract class AuthRepo {
  ResultFuture<SportbooUserEntity> loginWithEmail({
    required String email,
    required String password,
  });

  ResultFuture<void> requestRegistrationOtp({required String email});
  
  ResultFuture<void> verifyEmailOtp({required String otp});

  ResultFuture<void> requestPhoneRegistration({required String phone});

  ResultFuture<void> verifyPhoneNumber({required String otp});

  ResultFuture<RegisteredUserEntity> registerUser({
    required String fullname,
    required String email,
    required String password,
    required String username,
  });

  ResultFuture<void> requestForgotPasswordOtpToEmail({required String email});

  ResultFuture<void> requestForgotPasswordOtpToPhone({required String phone});

  ResultFuture<void> verifyForgetPasswordOtp({required String otp});

  ResultFuture<void> changePassword({required String password});

  ResultFuture<SportbooUserEntity> loginWithGoogle({required String idToken});
}
