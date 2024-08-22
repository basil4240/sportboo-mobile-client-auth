import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sportboo_mobile_client/core/services/http_util.dart';
import 'package:sportboo_mobile_client/src/auth/data/datasources/auth_remote_datasource.dart';
import 'package:sportboo_mobile_client/src/auth/data/repoimpl/auth_repo_impl.dart';
import 'package:sportboo_mobile_client/src/auth/domain/repos/auth_repo.dart';
import 'package:sportboo_mobile_client/src/auth/domain/usecases/change_password_usecase.dart';
import 'package:sportboo_mobile_client/src/auth/domain/usecases/login_with_email_usecase.dart';
import 'package:sportboo_mobile_client/src/auth/domain/usecases/login_with_google_usecase.dart';
import 'package:sportboo_mobile_client/src/auth/domain/usecases/register_user_usecase.dart';
import 'package:sportboo_mobile_client/src/auth/domain/usecases/request_forgot_password_otp_to_email_usecase.dart';
import 'package:sportboo_mobile_client/src/auth/domain/usecases/request_forgot_password_otp_to_phone_usecase.dart';
import 'package:sportboo_mobile_client/src/auth/domain/usecases/request_phone_registration_usecase.dart';
import 'package:sportboo_mobile_client/src/auth/domain/usecases/request_registration_otp_usecase.dart';
import 'package:sportboo_mobile_client/src/auth/domain/usecases/verify_email_otp_usecase.dart';
import 'package:sportboo_mobile_client/src/auth/domain/usecases/verify_forget_password_otp_usecase.dart';
import 'package:sportboo_mobile_client/src/auth/domain/usecases/verify_phone_number_usecase.dart';
import 'package:sportboo_mobile_client/src/auth/presentation/cubit/auth_cubit.dart';

final sl = GetIt.instance;

Future<void> init() async {
  await _initAuth();
}

Future<void> _initAuth() async {
  final prefs = await SharedPreferences.getInstance();
  final httputil = HttpUtil();

  //Bloc
  sl
    ..registerFactory(() => AuthCubit(
      sl<LoginWithEmailUsecase>(),
      sl<RegisterUserUsecase>(),
      sl<RequestRegistrationOtpUsecase>(),
      sl<VerifyEmailOtpUsecase>(),
      sl<RequestPhoneRegistrationUsecase>(),
      sl<VerifyPhoneNumberUsecase>(),
      sl<RequestForgotPasswordOtpToEmailUsecase>(),
      sl<RequestForgotPasswordOtpToPhoneUsecase>(),
      sl<VerifyForgetPasswordOtpUsecase>(),
      sl<ChangePasswordUsecase>(),
      sl<LoginWithGoogleUsecase>(),
    ))

    // Usecase
    ..registerLazySingleton(() => LoginWithEmailUsecase(sl()))
    ..registerLazySingleton(() => RequestRegistrationOtpUsecase(sl()))
    ..registerLazySingleton(() => VerifyEmailOtpUsecase(sl()))
    ..registerLazySingleton(() => RequestPhoneRegistrationUsecase(sl()))
    ..registerLazySingleton(() => VerifyPhoneNumberUsecase(sl()))
    ..registerLazySingleton(() => RegisterUserUsecase(sl()))
    ..registerLazySingleton(() => RequestForgotPasswordOtpToEmailUsecase(sl()))
    ..registerLazySingleton(() => RequestForgotPasswordOtpToPhoneUsecase(sl()))
    ..registerLazySingleton(() => VerifyForgetPasswordOtpUsecase(sl()))
    ..registerLazySingleton(() => ChangePasswordUsecase(sl()))
    ..registerLazySingleton(() => LoginWithGoogleUsecase(sl()))

    // Repository
    ..registerLazySingleton<AuthRepo>(() => AuthRepoImpl(sl()))

    // DataSource
    ..registerLazySingleton<AuthRemoteDatasource>(() => AuthRemoteDatasourceImpl(httputil, prefs))
    
    // External
    ..registerLazySingleton(() => prefs)
    ..registerLazySingleton(() => httputil);
}
