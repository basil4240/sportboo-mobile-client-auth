import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.freezed.dart';
part 'api_response.g.dart';

@freezed
class ApiResponse with _$ApiResponse {
  const factory ApiResponse({
    @Default(false) bool isSuccess,
    String? message,
    Map<String, dynamic>? data,
  }) = _ApiResponse;

  factory ApiResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiResponseImpl.fromJson(json);
}
