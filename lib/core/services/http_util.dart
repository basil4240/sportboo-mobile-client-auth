import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sportboo_mobile_client/core/services/injection_container.dart';
import 'package:sportboo_mobile_client/core/unils/constant.dart';
import 'package:sportboo_mobile_client/core/unils/typedefs.dart';

class HttpUtil {
  static final HttpUtil _instance = HttpUtil._internal();
  factory HttpUtil() => _instance;

  late Dio _dio;

  HttpUtil._internal() {
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      headers: {},
      contentType: 'application/json; charset=utf-8',
      responseType: ResponseType.json,
    );

    _dio = Dio(options);
  }

  // Get Auth Headers
  DataMap? getAuthorizationHeader() {
    var headers = <String, dynamic>{};
    SharedPreferences prefs = sl<SharedPreferences>();
    String? accessToken = prefs.getString('jwt');
    if (accessToken != null && accessToken.isNotEmpty) {
      headers['Authorization'] = 'Bearer $accessToken';
    }
    return headers;
  }

  // Get Method
  Future get(
    String path, {
    DataMap? queryParameters,
    Options? options,
  }) async {
    Options requestOptions = options ?? Options();
    requestOptions.headers = requestOptions.headers ?? {};
    DataMap? authorization = getAuthorizationHeader();

    if (authorization != null) {
      requestOptions.headers?.addAll(authorization);
    }

    try {
      var response = await _dio.get(
        path,
        queryParameters: queryParameters,
        options: requestOptions,
      );
      print(response);
      return response.data;
    } on DioException catch (e) {
      print(e.response?.statusCode);
      print(e.response?.data);
      throw ErrorEntity(
          code: e.response?.statusCode ?? 500,
          message: e.response?.data?['message'] ?? 'Network Error');
    }
  }

  // Post Method
  Future post(
    String path, {
    Object? data,
    DataMap? queryParameters,
    Options? options,
  }) async {
    Options requestOptions = options ?? Options();
    requestOptions.headers = requestOptions.headers ?? {};
    DataMap? authorization = getAuthorizationHeader();

    if (authorization != null) {
      requestOptions.headers?.addAll(authorization);
    }

    try {
      var response = await _dio.post(
        path,
        data: data,
        queryParameters: queryParameters,
        options: requestOptions,
      );
      print(response);
      return response.data;
    } on DioException catch (e) {
      print(e.response?.statusCode);
      print(e.response?.data);
      throw ErrorEntity(code: e.response?.statusCode ?? 500, message: e.response?.data?['message'] ?? 'Network Error');
    }
  }

  // Delete Method
  Future delete(
    String path, {
    Object? data,
    DataMap? queryParameters,
    Options? options,
  }) async {
    Options requestOptions = options ?? Options();
    requestOptions.headers = requestOptions.headers ?? {};
    DataMap? authorization = getAuthorizationHeader();

    if (authorization != null) {
      requestOptions.headers?.addAll(authorization);
    }

    try {
      var response = await _dio.delete(
        path,
        data: data,
        queryParameters: queryParameters,
        options: requestOptions,
      );

      print(response);
      return response.data;
    } on DioException catch (e) {
      print(e.response?.statusCode);
      print(e.response?.data);
      throw ErrorEntity(code: e.response?.statusCode ?? 500, message: e.response?.data?['message'] ?? 'Network Error');
    }
  }
}

class ErrorEntity implements Exception {
  final int code;
  final String message;

  ErrorEntity({required this.code, required this.message});

  @override
  String toString() {
    return message;
  }
}
