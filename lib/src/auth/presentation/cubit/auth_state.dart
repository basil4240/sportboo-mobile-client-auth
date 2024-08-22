part of 'auth_cubit.dart';

sealed class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

final class AuthInitial extends AuthState {}

final class AuthLoading extends AuthState {}

final class LoggedIn extends AuthState {
  final SportbooUserEntity user;

  const LoggedIn(this.user);

  @override
  List<Object> get props => [user];
}

final class UserRegistered extends AuthState {}

final class RegistrationOtpSent extends AuthState {}

final class EmailVerified extends AuthState {}

final class PhoneRegistrationRequestCompleted extends AuthState {}

final class PhoneNumberVerified extends AuthState {}

final class ForgetPasswordOtpSent extends AuthState {}

final class ForgetPasswordOtpVerified extends AuthState {}

final class ChangePasswordSuccessful extends AuthState {}

final class AuthError extends AuthState {
  final int statusCode;
  final String message;

  const AuthError(this.statusCode, this.message);

  @override
  List<Object> get props => [statusCode, message];
}