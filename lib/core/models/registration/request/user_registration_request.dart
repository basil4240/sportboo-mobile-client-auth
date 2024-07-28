import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_registration_request.freezed.dart';
part 'user_registration_request.g.dart';

@freezed
class UserRegistrationRequest with _$UserRegistrationRequest {
  const factory UserRegistrationRequest({
    required String fullname,
    required String email,
    required String password,
    required String username,
  }) = _UserRegistrationRequest;

  factory UserRegistrationRequest.fromJson(Map<String, dynamic> json) =>
      _$UserRegistrationRequestFromJson(json);
}
