import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sportboo_mobile_client/core/services/http_util.dart';
import 'package:sportboo_mobile_client/src/auth/data/datasources/auth_remote_datasource.dart';
import 'package:sportboo_mobile_client/src/auth/data/repoimpl/auth_repo_impl.dart';
import 'package:sportboo_mobile_client/src/auth/domain/repos/auth_repo.dart';
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
import 'package:sportboo_mobile_client/src/auth/presentation/cubit/auth_cubit.dart';
import 'package:sportboo_mobile_client/src/onboarding/data/datasources/onboarding_remote_datasource.dart';
import 'package:sportboo_mobile_client/src/onboarding/data/repoimpl/onboarding_repo_impl.dart';
import 'package:sportboo_mobile_client/src/onboarding/domain/repos/onboarding_repo.dart';
import 'package:sportboo_mobile_client/src/onboarding/domain/usecases/favorite_competition.dart';
import 'package:sportboo_mobile_client/src/onboarding/domain/usecases/favorite_team_usecase.dart';
import 'package:sportboo_mobile_client/src/onboarding/domain/usecases/get_all_competitions_usecase.dart';
import 'package:sportboo_mobile_client/src/onboarding/domain/usecases/get_all_teams_usecase.dart';
import 'package:sportboo_mobile_client/src/onboarding/domain/usecases/remove_favorite.dart';
import 'package:sportboo_mobile_client/src/onboarding/domain/usecases/search_competition_usecase.dart';
import 'package:sportboo_mobile_client/src/onboarding/domain/usecases/search_team_usecase.dart';
import 'package:sportboo_mobile_client/src/onboarding/presentation/cubit/onboarding_cubit.dart';

final sl = GetIt.instance;

Future<void> init() async {
  await _initAuth();
  await _initOnboarding();
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
      sl<LoginWithFacebookUsecase>(),
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
    ..registerLazySingleton(() => LoginWithFacebookUsecase(sl()))

    // Repository
    ..registerLazySingleton<AuthRepo>(() => AuthRepoImpl(sl()))

    // DataSource
    ..registerLazySingleton<AuthRemoteDatasource>(() => AuthRemoteDatasourceImpl(httputil, prefs))
    
    // External
    ..registerLazySingleton(() => prefs)
    ..registerLazySingleton(() => httputil);
}

Future<void> _initOnboarding() async {
  // Bloc
  sl
    ..registerFactory(() => OnboardingCubit(
      sl<GetAllCompetitionsUsecase>(), 
      sl<FavoriteCompetitionUsecase>(),
      sl<SearchCompetitionUsecase>(),
      sl<GetAllTeamsUsecase>(),
      sl<FavoriteTeamUsecase>(),
      sl<SearchTeamUsecase>(),
      sl<RemoveFavoriteUsecase>(),
    ))

    // Usecases
    ..registerLazySingleton(() => GetAllCompetitionsUsecase(sl()))
    ..registerLazySingleton(() => FavoriteCompetitionUsecase(sl()))
    ..registerLazySingleton(() => SearchCompetitionUsecase(sl()))
    ..registerLazySingleton(() => GetAllTeamsUsecase(sl()))
    ..registerLazySingleton(() => FavoriteTeamUsecase(sl()))
    ..registerLazySingleton(() => SearchTeamUsecase(sl()))
    ..registerLazySingleton(() => RemoveFavoriteUsecase(sl()))

    // Repository
    ..registerLazySingleton<OnboardingRepo>(() => OnboardingRepoImpl(sl()))

    // DataSource
    ..registerLazySingleton<OnboardingRemoteDatasource>(() => OnboardingRemoteDatasourceImpl(sl()));
}