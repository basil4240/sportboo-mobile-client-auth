import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sportboo_mobile_client/core/io/api/dio_config.dart';
import 'package:sportboo_mobile_client/core/models/registration/email_verification/resend_otp_request.dart';
import 'package:sportboo_mobile_client/core/models/registration/request/user_registration_request.dart';
import 'package:sportboo_mobile_client/core/models/validate_username/request/validate_username_request.dart';

import '../../../models/login/request/login_request.dart';
import '../../../models/registration/email_verification/verify_email_request.dart';
import '../../../models/registration/phone_verification.dart/verify_phone_request.dart';
import '../endpoints.dart';

part 'account_services.g.dart';

@RestApi(baseUrl: "${Endpoints.baseUrl}/users/auth")
abstract class AccountsService {
  factory AccountsService() {
    return _AccountsService(DioConfig.dio(),
        baseUrl: "${Endpoints.baseUrl}/users/auth");
  }

  @POST("/login/email")
  Future login(@Body() LoginRequest request);

  @POST("/register")
  Future registerUser(@Body() UserRegistrationRequest request);

  @POST("/validate/username")
  Future validateUsername(@Body() ValidateUsernameRequest request);

  @POST("/register/verify")
  Future verifyEmail(@Body() VerifyEmailOtpRequest request);

  @POST("/register/otp")
  Future resendOtp(@Body() ResendOtpRequest request);

  @POST("/register/phone")
  Future registerPhone(@Body() VerifyPhoneRequest request);

}
