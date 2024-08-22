import 'package:sportboo_mobile_client/src/auth/data/models/registered_user_model.dart';

import '../../models/network_response.dart';
import '../../core/unils/constant.dart';
import 'package:dio/dio.dart';

import '../../src/auth/data/models/sportboouser_model.dart';

class AuthenticationService {
  final Dio _dio = Dio(BaseOptions(
    headers: {
      'Content-Type': 'application/json',
    },
    // baseUrl: baseUrl,
    connectTimeout: const Duration(seconds: 120),
    receiveTimeout: const Duration(seconds: 10),
  ));

  Future<NetworkResponse> loginWithEmail(
      {required String email, required String password}) async {
    try {
      var response = await _dio.post('$baseUrl/users/auth/login/email', data: {
        'email': email,
        'password': password,
      });

      return NetworkResponse.success(
        statusCode: response.statusCode ?? 200,
        message: response.data?['message'],
        data: SportbooUser.fromJson(response.data['data']),
      );
    } on DioException catch (e) {
      return NetworkResponse.error(
        statusCode: e.response?.statusCode ?? 500,
        message: e.response?.data?['message'] ?? 'Network Error',
        errorData: null,
      );
    } catch (e) {
      return NetworkResponse.error(
        statusCode: 500,
        message: 'Network Error: Please try again',
        errorData: null,
      );
    }
  }

  Future<NetworkResponse<dynamic, dynamic>> saveDeviceToken(
      String deviceId, String? authToken) async {
    try {
      var response = await _dio.patch(
        '$baseUrl/profile/device-id',
        data: {'deviceId': deviceId},
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Authorization': 'Bearer $authToken',
          },
        ),
      );

      return NetworkResponse<dynamic, dynamic>.success(
          statusCode: response.statusCode ?? 200,
          message: response.data?['message'],
          data: response.data?['data']);
    } on DioException catch (e) {
      return NetworkResponse<dynamic, dynamic>.error(
          statusCode: 500,
          message: 'Network Error: Please try again',
          errorData: null);
    } catch (e) {
      return NetworkResponse<dynamic, dynamic>.error(
          statusCode: 500,
          message: 'Network Error: Please try again',
          errorData: null);
    }
  }

  Future<NetworkResponse> registerUser({
    required String fullName,
    required String email,
    required String password,
    required String username,
  }) async {
    try {
      var response = await _dio.post('$baseUrl/users/auth/register', data: {
        'fullname': fullName,
        'email': email,
        'password': password,
        'username': username
      });

      return NetworkResponse<dynamic, dynamic>.success(
        statusCode: response.statusCode ?? 201,
        message: response.data?['message'],
        data: RegisteredUser.fromJson(response.data['data']),
      );
    } on DioException catch (e) {
      return NetworkResponse<dynamic, dynamic>.error(
        statusCode: 500,
        message: e.response?.data?['message'] ?? 'Network Error',
        errorData: null,
      );
    } catch (e) {
      return NetworkResponse<dynamic, dynamic>.error(
        statusCode: 500,
        message: 'Network Error: Please try again',
        errorData: null,
      );
    }
  }

  Future<NetworkResponse> requestOtp({required String email}) async {
    try {
      final response = await _dio.post('$baseUrl/user/auth/register/otp', data: {'email': email});

      return NetworkResponse<dynamic, dynamic>.success(
        statusCode: response.statusCode ?? 200,
        message: response.data?['message'],
        data: response.data?['data'],
      );
    } on DioException catch (e) {
      return NetworkResponse<dynamic, dynamic>.error(
        statusCode: 500,
        message: 'Network Error: Please try again',
        errorData: null,
      );
    } catch (e) {
      return NetworkResponse<dynamic, dynamic>.error(
        statusCode: 500,
        message: 'Network Error: Please try again',
        errorData: null,
      );
    }
  }

  Future<NetworkResponse> verifyEmail(
      {required String otp, required int userId}) async {
    try {
      final response =
          await _dio.post('$baseUrl/users/auth/register/verify', data: {
        'otp': otp,
        'userId': userId,
      });

      return NetworkResponse<dynamic, dynamic>.success(
        statusCode: response.statusCode ?? 200,
        message: response.data?['message'],
        data: response.data?['data'],
      );
    } on DioException catch (e) {
      return NetworkResponse<dynamic, dynamic>.error(
        statusCode: 500,
        message: e.response?.data?['message'] ?? 'Network Error',
        errorData: null,
      );
    } catch (e) {
      return NetworkResponse<dynamic, dynamic>.error(
        statusCode: 500,
        message: 'Network Error: Please try again',
        errorData: null,
      );
    }
  }

  Future<NetworkResponse> registerPhoneNumber({
    required int userId,
    required String phone,
  }) async {
    try {
      final response =
          await _dio.post('$baseUrl/users/auth/register/phone', data: {
        'userId': userId,
        'phone': phone,
      });

      return NetworkResponse.success(
        statusCode: response.statusCode ?? 200,
        data: response.data?['data'],
        message: response.data?['message'],
      );
    } on DioException catch (e) {
      return NetworkResponse<dynamic, dynamic>.error(
        statusCode: 500,
        message: e.response?.data?['message'] ?? 'Network Error',
        errorData: null,
      );
    } catch (e) {
      return NetworkResponse<dynamic, dynamic>.error(
        statusCode: 500,
        message: 'Network Error: Please try again',
        errorData: null,
      );
    }
  }

  Future<NetworkResponse> verifyPhone({
    required String otp,
    required int userId,
  }) async {
    try {
      final response =
          await _dio.post('$baseUrl/users/auth/register/phone/verify', data: {
        'otp': otp,
        'userId': userId,
      });

      return NetworkResponse.success(
        statusCode: response.statusCode ?? 200,
        data: response.data?['data'],
        message: response.data?['message'],
      );
    } on DioException catch (e) {
      return NetworkResponse<dynamic, dynamic>.error(
        statusCode: 500,
        message: e.response?.data?['message'] ?? 'Network Error',
        errorData: null,
      );
    } catch (e) {
      return NetworkResponse<dynamic, dynamic>.error(
        statusCode: 500,
        message: 'Network Error: Please try again',
        errorData: null,
      );
    }
  }

  Future<NetworkResponse> forgotPasswordRequestOtpToEmail(
      {required String email}) async {
    try {
      final response = await _dio.post(
        '$baseUrl/users/auth/password/forget/otp',
        data: {'email': email},
      );

      return NetworkResponse.success(
        statusCode: response.statusCode ?? 200,
        data: RegisteredUser.fromJson(response.data['data']),
        message: response.data?['message'],
      );
    } on DioException catch (e) {
      return NetworkResponse<dynamic, dynamic>.error(
        statusCode: 500,
        message: e.response?.data?['message'] ?? 'Network Error',
        errorData: null,
      );
    } catch (e) {
      return NetworkResponse<dynamic, dynamic>.error(
        statusCode: 500,
        message: 'Network Error: Please try again',
        errorData: null,
      );
    }
  }

  Future<NetworkResponse> verifyForgetPasswordOtp(
      {required String otp, required int userId}) async {
    try {
      final response = await _dio.post(
          '$baseUrl/users/auth/password/forget/verify',
          data: {'userId': userId, 'otp': otp});

      return NetworkResponse.success(
        statusCode: response.statusCode ?? 200,
        data: response.data?['data'],
        message: response.data?['message'],
      );
    } on DioException catch (e) {
      return NetworkResponse<dynamic, dynamic>.error(
        statusCode: 500,
        message: e.response?.data?['message'] ?? 'Network Error',
        errorData: null,
      );
    } catch (e) {
      return NetworkResponse<dynamic, dynamic>.error(
        statusCode: 500,
        message: 'Network Error: Please try again',
        errorData: null,
      );
    }
  }

  Future<NetworkResponse> resetPassword({
    required int userId,
    required String password,
  }) async {
    try {
      final response =
          await _dio.post('$baseUrl/users/auth/password/forget', data: {
        'userId': userId,
        'password': password,
      });

      return NetworkResponse.success(
        statusCode: response.statusCode ?? 200,
        data: response.data?['data'],
        message: response.data?['message'],
      );
    } on DioException catch (e) {
      return NetworkResponse<dynamic, dynamic>.error(
        statusCode: 500,
        message: e.response?.data?['message'] ?? 'Network Error',
        errorData: null,
      );
    } catch (e) {
      return NetworkResponse<dynamic, dynamic>.error(
        statusCode: 500,
        message: 'Network Error: Please try again',
        errorData: null,
      );
    }
  }
}
