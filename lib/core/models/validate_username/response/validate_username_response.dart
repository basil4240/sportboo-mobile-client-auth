import 'package:freezed_annotation/freezed_annotation.dart';

part 'validate_username_response.freezed.dart';
part 'validate_username_response.g.dart';

@freezed
class ValidateUsernameResponse with _$ValidateUsernameResponse {
  const factory ValidateUsernameResponse({
    required String message,
    required bool data,

  }) = _ValidateUsernameResponse;

  factory ValidateUsernameResponse.fromJson(Map<String, dynamic> json) =>
      _$ValidateUsernameResponseFromJson(json);
}
