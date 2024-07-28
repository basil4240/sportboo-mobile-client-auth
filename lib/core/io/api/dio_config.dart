import 'package:dio/dio.dart';

import '../../../unils/constant.dart';
import '../../models/api_response.dart/api_response.dart';
import 'account_services/account_services.dart';
import 'handlers/response_handers.dart';

class DioConfig {
  DioConfig._();

  // static AppStateValues stateValues = locator<AppStateValues>();
  static AccountsService accountsService = AccountsService();
  static Dio dio() {
    Map<String, dynamic> headers = {
      "Accept": "*/*",
      "Content-Type": "application/json"
    };
    if (AppConstants.accessToken.isNotEmpty) {
      headers["Authorization"] = "Bearer ${AppConstants.accessToken}";
    }

    Dio dio = Dio();
    dio.options = BaseOptions(
      connectTimeout: const Duration(seconds: 30),
      headers: headers,
      validateStatus: (status) {
        return true;
      },
    );
    dio.interceptors.add(LogInterceptor(
      request: true,
      requestBody: true,
      requestHeader: true,
      responseBody: true,
      responseHeader: true,
    ));

    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        return handler.next(options);
      },
      onResponse: (response, handler) async {
        Response<ApiResponse> resp =
            ResponseHandlers.handleDioResponse(response);
        // if (response.statusCode == 401) {
        //   // Attempt silent refresh
        //   // await refreshJwt();
        //   // Update access token and retry the request

        //   response.requestOptions.headers["Authorization"] =
        //       "Bearer ${AppConstants.accessToken}";
        //   return handler.resolve(await dio.fetch(response.requestOptions));
        // }
        return handler.next(resp);
      },
      onError: (DioException e, handler) async {
        // if (e.response?.statusCode == 401) {
        //   // Attempt silent refresh
        //   // await refreshJwt();

        //   e.requestOptions.headers["Authorization"] =
        //       "Bearer ${AppConstants.accessToken}";
        //   return handler.resolve(await dio.fetch(e.requestOptions));
        // }
        // Handle other errors
        return handler.next(e);
      },
    ));

    return dio;
  }

  // static refreshJwt() async {
  //   RefreshJwtRequest request = RefreshJwtRequest(
  //       userId: stateValues.user!.userId,
  //       refreshToken: stateValues.user!.refreshToken);

  //   ApiResponse resp = await accountsService
  //       .refreshAccess(request)
  //       .onError((error, stackTrace) {
  //     return ApiResponse(
  //       message: AppErrorHandler.getErrorMessage(error),
  //     );
  //   });

  //   if (resp.isSuccess) {
  //     RefreshJwtResponse response = RefreshJwtResponse.fromJson(resp.data!);
  //     stateValues.user = stateValues.user!.copyWith(
  //       refreshToken: response.refreshToken,
  //       accessToken: response.accessToken,
  //       refreshExpiresAt: response.refreshExpiresAt,
  //       accessExpiresAt: response.accessExpiresAt,
  //       accountStatus: response.accountStatus,
  //     );
  //     AppConstants.accessToken = response.accessToken;
  //   } else {
  //     refreshJwt();
  //   }
  // }
}
