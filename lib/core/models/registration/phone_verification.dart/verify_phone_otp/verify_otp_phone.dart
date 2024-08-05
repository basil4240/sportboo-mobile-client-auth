import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_otp_phone.freezed.dart';
part 'verify_otp_phone.g.dart';

@freezed
class VerifyPhoneRequest with _$VerifyPhoneRequest {
  const factory VerifyPhoneRequest({
    required String otp,
    required int userId,
  }) = _VerifyPhoneRequest;

  factory VerifyPhoneRequest.fromJson(Map<String, dynamic> json) =>
      _$VerifyPhoneRequestFromJson(json);
}
