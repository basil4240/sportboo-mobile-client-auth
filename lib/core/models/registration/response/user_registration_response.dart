import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_registration_response.freezed.dart';
part 'user_registration_response.g.dart';

@freezed
class UserRegistrationResponse with _$UserRegistrationResponse {
  const factory UserRegistrationResponse({
    required String message,
    required UserRegistrationData data,
  }) = _UserRegistrationResponse;

  factory UserRegistrationResponse.fromJson(Map<String, dynamic> json) =>
      _$UserRegistrationResponseFromJson(json);
}

@freezed
class UserRegistrationData with _$UserRegistrationData {
  const factory UserRegistrationData({
    required String fullname,
    required int userId,
    required String email,
    required String sportbooId,
  }) = _UserRegistrationData;

  factory UserRegistrationData.fromJson(Map<String, dynamic> json) =>
      _$UserRegistrationDataFromJson(json);
}
