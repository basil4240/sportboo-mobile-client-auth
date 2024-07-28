import 'package:freezed_annotation/freezed_annotation.dart';

part 'validate_username_request.freezed.dart';
part 'validate_username_request.g.dart';

@freezed
class ValidateUsernameRequest with _$ValidateUsernameRequest {
  const factory ValidateUsernameRequest({
    required String username,
  }) = _ValidateUsernameRequest;

  factory ValidateUsernameRequest.fromJson(Map<String, dynamic> json) =>
      _$ValidateUsernameRequestFromJson(json);
}
