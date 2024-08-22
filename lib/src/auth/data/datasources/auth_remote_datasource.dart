import 'package:shared_preferences/shared_preferences.dart';
import 'package:sportboo_mobile_client/core/errors/exception.dart';
import 'package:sportboo_mobile_client/core/services/http_util.dart';
import 'package:sportboo_mobile_client/core/unils/local_storage.dart';
import 'package:sportboo_mobile_client/src/auth/data/models/registered_user_model.dart';
import 'package:sportboo_mobile_client/src/auth/data/models/sportboouser_model.dart';

abstract class AuthRemoteDatasource {
  Future<SportbooUser> loginWithEmail({
    required String email,
    required String password,
  });

  Future<void> requestRegistrationOtp({required String email});
  
  Future<void> verifyEmailOtp({required String otp});

  Future<void> requestPhoneRegistration({required String phone});

  Future<void> verifyPhoneNumber({required String otp});

  Future<RegisteredUser> registerUser({required String fullname, required String email, required String password, required String username});

  Future<void> requestForgotPasswordOtpToEmail({required String email});

  Future<void> requestForgotPasswordOtpToPhone({required String phone});

  Future<void> verifyForgetPasswordOtp({required String otp});

  Future<void> changePassword({required String password});

  Future<SportbooUser> loginWithGoogle({required String idToken});
}

class AuthRemoteDatasourceImpl extends AuthRemoteDatasource {
  final HttpUtil _httpUtil;
  final SharedPreferences _sharedPreferences;
  static const String _tokenKey = MyStorage.jwt;
  static int _userId = -1;

  AuthRemoteDatasourceImpl(this._httpUtil, this._sharedPreferences);

  @override
  Future<SportbooUser> loginWithEmail({
    required String email,
    required String password,
  }) async {
    try {
      final response = await _httpUtil.post('/users/auth/login/email', data: {
        'email': email,
        'password': password,
      });

      SportbooUser data = SportbooUser.fromJson(response['data']);
      await saveToken(data.accessToken!);

      return data;
    } on ErrorEntity catch (e) {
      throw ServerException(message: e.message, statusCode: e.code);
    }
  }

  Future saveToken(String token) async {
    await _sharedPreferences.setString(_tokenKey, token);
  }
  
  @override
  Future<void> requestRegistrationOtp({required String email}) async {
    try {
      final response = await _httpUtil.post('/users/auth/register/otp', data: {'email': email});

      _userId = response['data']['userId'];
      
    } on ErrorEntity catch (e) {
      throw ServerException(message: e.message, statusCode: e.code);
    }
  }
  
  @override
  Future<void> verifyEmailOtp({required String otp}) async {
    try {
      await _httpUtil.post('/users/auth/register/verify', data: {'otp': otp, 'userId': _userId});
    } on ErrorEntity catch (e) {
      throw ServerException(message: e.message, statusCode: e.code);
    }
  }
  
  @override
  Future<void> requestPhoneRegistration({required String phone}) async {
    try {
      await _httpUtil.post('/users/auth/register/phone', data: {'userId': _userId, 'phone': phone});

    } on ErrorEntity catch (e) {
      throw ServerException(message: e.message, statusCode: e.code);
    }
  }
  
  @override
  Future<void> verifyPhoneNumber({required String otp}) async {
    try {
      await _httpUtil.post('/users/auth/register/phone/verify', data: {'otp': otp, 'userId': _userId});
    } on ErrorEntity catch (e) {
      throw ServerException(message: e.message, statusCode: e.code);
    }
  }
  
  @override
  Future<RegisteredUser> registerUser({required String fullname, required String email, required String password, required String username}) async {
    try {
      final response = await _httpUtil.post('/users/auth/register', data: {'fullname': fullname, 'email': email, 'password': password, 'username': username});

      return RegisteredUser.fromJson(response);
    } on ErrorEntity catch (e) {
      throw ServerException(message: e.message, statusCode: e.code);
    }
  }
  
  @override
  Future<void> requestForgotPasswordOtpToEmail({required String email}) async {
    try {
      final response = await _httpUtil.post('/users/auth/password/forget/otp', data: {'email': email});

      _userId = response['data']['userId'];
    } on ErrorEntity catch (e) {
      throw ServerException(message: e.message, statusCode: e.code);
    }
  }
  
  @override
  Future<void> requestForgotPasswordOtpToPhone({required String phone}) async {
    try {
      final response = await _httpUtil.post('/users/auth/password/forget/otp', data: {'phone': phone});

      _userId = response['data']['userId'];
    } on ErrorEntity catch (e) {
      throw ServerException(message: e.message, statusCode: e.code);
    }
  }
  
  @override
  Future<void> verifyForgetPasswordOtp({required String otp}) async {
    try {
      await _httpUtil.post('/users/auth/password/forget/verify', 
       data: {'userId': _userId, 'otp': otp},
      );
    } on ErrorEntity catch (e) {
      throw ServerException(message: e.message, statusCode: e.code);
    }
  }
  
  @override
  Future<void> changePassword({required String password}) async {
    try {
      await _httpUtil.post('/users/auth/password/forget', data: {'userId': _userId, 'password': password});
    } on ErrorEntity catch (e) {
      throw ServerException(message: e.message, statusCode: e.code);
    }
  }
  
  @override
  Future<SportbooUser> loginWithGoogle({required String idToken}) async {
    try {
      final response = await _httpUtil.post('/users/auth/google', data:  {'idToken': idToken});

      SportbooUser data = SportbooUser.fromJson(response['data']);
      await saveToken(data.accessToken!);

      return data;
    }  on ErrorEntity catch (e) {
      throw ServerException(message: e.message, statusCode: e.code);
    }
  }
}
