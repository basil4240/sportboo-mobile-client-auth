import 'package:dio/dio.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

class AppErrorHandler {
  AppErrorHandler._();

  static String getErrorMessage(error) {
    if (error is DioException) {
      return "Request error: ${getDioError(error.type)}";
    } else if (error is PlatformException) {
      return "Platform error: ${error.message ?? "Something went wrong"}";
    } else if (error is GoException) {
      return "Routing error: ${error.message}";
    } else if (error is FirebaseException) {
      return "Firebase error: ${error.message ?? "Something went wrong"}";
    } else {
      return error.toString();
    }
  }

  static String getDioError(DioExceptionType type) {
    switch (type) {
      case DioExceptionType.connectionTimeout:
        return "Connection timed out. Please check your connection and try again.";
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return "This request timed out. Please try again later";
      case DioExceptionType.badCertificate:
        return "Looks like something went wrong. Please contact support or try again.";
      case DioExceptionType.badResponse:
        return "";
      case DioExceptionType.cancel:
        return "Looks like this request was cancelled. If you did not do this yourself, please contact us or try again";
      case DioExceptionType.connectionError:
        return "Something went wrong while trying to connect to the server, please check your connection and try again.";
      case DioExceptionType.unknown:
        return "Oops, something went wrong";
    }
  }
}
