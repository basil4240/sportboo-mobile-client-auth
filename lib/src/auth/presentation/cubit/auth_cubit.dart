import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sportboo_mobile_client/src/auth/domain/entities/sportboo_user_entity.dart';
import 'package:sportboo_mobile_client/src/auth/domain/usecases/change_password_usecase.dart';
import 'package:sportboo_mobile_client/src/auth/domain/usecases/login_with_email_usecase.dart';
import 'package:sportboo_mobile_client/src/auth/domain/usecases/login_with_facebook_usecase.dart';
import 'package:sportboo_mobile_client/src/auth/domain/usecases/login_with_google_usecase.dart';
import 'package:sportboo_mobile_client/src/auth/domain/usecases/register_user_usecase.dart';
import 'package:sportboo_mobile_client/src/auth/domain/usecases/request_forgot_password_otp_to_email_usecase.dart';
import 'package:sportboo_mobile_client/src/auth/domain/usecases/request_forgot_password_otp_to_phone_usecase.dart';
import 'package:sportboo_mobile_client/src/auth/domain/usecases/request_phone_registration_usecase.dart';
import 'package:sportboo_mobile_client/src/auth/domain/usecases/request_registration_otp_usecase.dart';
import 'package:sportboo_mobile_client/src/auth/domain/usecases/verify_email_otp_usecase.dart';
import 'package:sportboo_mobile_client/src/auth/domain/usecases/verify_forget_password_otp_usecase.dart';
import 'package:sportboo_mobile_client/src/auth/domain/usecases/verify_phone_number_usecase.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(
    this.loginWithEmailUsecase, 
    this.registerUserUsecase, 
    this.registrationOtpUsecase, 
    this.verifyEmailOtpUsecase, 
    this.requestPhoneRegistrationUsecase,
    this.verifyPhoneNumberUsecase,
    this.requestForgotPasswordOtpToEmailUsecase,
    this.requestForgotPasswordOtpToPhoneUsecase,
    this.verifyForgetPasswordOtpUsecase,
    this.changePasswordUsecase,
    this.loginWithGoogleUsecase,
    this.loginWithFacebookUsecase,
  ) : super(AuthInitial());

  final LoginWithEmailUsecase loginWithEmailUsecase;
  final RegisterUserUsecase registerUserUsecase;
  final RequestRegistrationOtpUsecase registrationOtpUsecase;
  final VerifyEmailOtpUsecase verifyEmailOtpUsecase;
  final RequestPhoneRegistrationUsecase requestPhoneRegistrationUsecase;
  final VerifyPhoneNumberUsecase verifyPhoneNumberUsecase;
  final RequestForgotPasswordOtpToEmailUsecase requestForgotPasswordOtpToEmailUsecase;
  final RequestForgotPasswordOtpToPhoneUsecase requestForgotPasswordOtpToPhoneUsecase;
  final VerifyForgetPasswordOtpUsecase verifyForgetPasswordOtpUsecase;
  final ChangePasswordUsecase changePasswordUsecase;
  final LoginWithGoogleUsecase loginWithGoogleUsecase;
  final LoginWithFacebookUsecase loginWithFacebookUsecase;

  Future<void> loginWithEmail({required String email, required String password}) async {
    emit(AuthLoading());

    final result = await loginWithEmailUsecase.call(LoginWithEmailParams(email: email, password: password));

    result.fold(
      (failure) => emit(AuthError(failure.statusCode, failure.message)), 
      (user) => emit(LoggedIn(user)),
    );
  }

  Future<void> registerUser({
    required String fullname,
    required String email,
    required String password,
    required String username,
  }) async {
    emit(AuthLoading());

    final result = await registerUserUsecase.call(RegisterUserUsecaseParams(fullname, email, password, username));

    result.fold(
      (failure) => emit(AuthError(failure.statusCode, failure.message)), 
      (_) => emit(UserRegistered()),
    );
  }

  Future<void> requestRegistrationOtp({required String email}) async {
    emit(AuthLoading());

    final result = await registrationOtpUsecase.call(RegistrationOtpUsecaseParams(email: email));

    result.fold(
      (failure) => emit(AuthError(failure.statusCode, failure.message)), 
      (_) => emit(RegistrationOtpSent()),
    );
  }

  Future<void> verifyEmailOtp({required String otp}) async {
    emit(AuthLoading());

    final result = await verifyEmailOtpUsecase.call(VerifyEmailOtpUsecaseParams(otp: otp));

    result.fold(
      (failure) => emit(AuthError(failure.statusCode, failure.message)), 
      (_) => emit(EmailVerified()),
    );
  }

  Future<void> requestPhoneRegistration({required String phone}) async {
    emit(AuthLoading());

    final result = await requestPhoneRegistrationUsecase.call(RequestPhoneRegistrationUsecaseParams(phone: phone));

    result.fold(
      (failure) => emit(AuthError(failure.statusCode, failure.message)), 
      (_) => emit(PhoneRegistrationRequestCompleted()),
    );
  }

  Future<void> verifyPhoneNumber({required String otp}) async {
    emit(AuthLoading());

    final result = await verifyPhoneNumberUsecase.call(VerifyPhoneNumberUsecaseParams(otp: otp));

    result.fold(
      (failure) => emit(AuthError(failure.statusCode, failure.message)), 
      (_) => emit(PhoneNumberVerified())
    );
  }

  Future<void> requestForgotPasswordOtpToEmail({required String email}) async {
    emit(AuthLoading());

    final result = await requestForgotPasswordOtpToEmailUsecase.call(RequestForgotPasswordOtpToEmailParams(email: email));

    result.fold(
      (failure) => emit(AuthError(failure.statusCode, failure.message)), 
      (_) => emit(ForgetPasswordOtpSent()),
    );
  }

  Future<void> requestForgotPasswordOtpToPhone({required String phone}) async {
    emit(AuthLoading());

    final result = await requestForgotPasswordOtpToPhoneUsecase.call(RequestForgotPasswordOtpToPhoneParams(phone: phone));

    result.fold(
      (failure) => emit(AuthError(failure.statusCode, failure.message)), 
      (_) =>emit( ForgetPasswordOtpSent())
    );
  }

  Future<void> verifyForgetPasswordOtp({required String otp}) async {
    emit(AuthLoading());

    final result = await verifyForgetPasswordOtpUsecase.call(VerifyForgetPasswordOtpParams(otp: otp));

    result.fold(
      (failure) => emit(AuthError(failure.statusCode, failure.message)), 
      (_) => emit(ForgetPasswordOtpVerified()),
    );
  }

  Future<void> changePassword({required password}) async {
    emit(AuthLoading());

    final result = await changePasswordUsecase.call(ChangePasswordParams(password: password));

    result.fold(
      (failure) => emit(AuthError(failure.statusCode, failure.message)), 
      (_) => emit(ChangePasswordSuccessful()),
    );
  }

  Future<void> loginWithGoogle({required String idToken}) async {
    emit(AuthLoading());

    final result = await loginWithGoogleUsecase.call(LoginWithGoogleParams(idToken: idToken));

    result.fold(
      (failure) => emit(AuthError(failure.statusCode, failure.message)), 
      (user) => emit(LoggedIn(user)),
    );
  }

  Future<void> loginWithFacebook({required String accessToken}) async {
    emit(AuthLoading());

    final result = await loginWithFacebookUsecase.call(LoginWithFacebookParams(accessToken: accessToken));

    result.fold(
      (failure) => emit(AuthError(failure.statusCode, failure.message)), 
      (user) => emit(LoggedIn(user)),
    );
  }
}
