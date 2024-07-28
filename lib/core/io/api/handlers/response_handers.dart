import 'package:sportboo_mobile_client/core/models/api_response.dart/api_response.dart';
import 'package:dio/dio.dart';

class ResponseHandlers {
  static Response<ApiResponse> handleDioResponse(Response<dynamic> response) {
    Response<ApiResponse> resp;
    if (response.statusCode != null &&
        response.statusCode! >= 200 &&
        response.statusCode! < 300 &&
        response.statusCode! < 400) {
      resp = Response(
          statusCode: response.statusCode,
          statusMessage: response.statusMessage,
          isRedirect: response.isRedirect,
          redirects: response.redirects,
          extra: response.extra,
          headers: response.headers,
          requestOptions: response.requestOptions,
          data: ApiResponse(
            isSuccess: true,
            message: response.statusMessage,
            data: response.data is String
                ? null
                : response.data is List
                    ? {"results": response.data}
                    : response.data as Map<String, dynamic>,
          ));
    } else {
      resp = Response(
        statusCode: response.statusCode,
        statusMessage: response.statusMessage,
        isRedirect: response.isRedirect,
        redirects: response.redirects,
        extra: response.extra,
        headers: response.headers,
        requestOptions: response.requestOptions,
        data: ApiResponse(
          isSuccess: false,
          message: response.data?['message'] ?? response.statusMessage,
          data: response.data is String
              ? null
              : response.data as Map<String, dynamic>,
        ),
      );
    }
    return resp;
  }
}
