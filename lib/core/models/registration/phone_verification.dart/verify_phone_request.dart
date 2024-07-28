import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_phone_request.freezed.dart';
part 'verify_phone_request.g.dart';

@freezed
class VerifyPhoneRequest with _$VerifyPhoneRequest {
  const factory VerifyPhoneRequest({
    required String phone,
  }) = _VerifyPhoneRequest;

  factory VerifyPhoneRequest.fromJson(Map<String, dynamic> json) =>
      _$VerifyPhoneRequestFromJson(json);
}
