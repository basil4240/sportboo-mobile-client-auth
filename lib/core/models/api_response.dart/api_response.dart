import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.freezed.dart';
part 'api_response.g.dart';



@freezed
class ApiResponse with _$ApiResponse {
  const factory ApiResponse({
    @Default(false) bool isSuccess,
    int? statusCode,
    dynamic message, // Use custom Message type
    Map<String, dynamic>? data,
  }) = _ApiResponse;

  factory ApiResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiResponseFromJson(json);
}

