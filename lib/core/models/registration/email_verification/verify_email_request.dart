import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_email_request.freezed.dart';
part 'verify_email_request.g.dart';

@freezed
class VerifyEmailOtpRequest with _$VerifyEmailOtpRequest {
  const factory VerifyEmailOtpRequest({
    required String otp,
    required int userId,
  }) = _VerifyEmailOtpRequest;

  factory VerifyEmailOtpRequest.fromJson(Map<String, dynamic> json) =>
      _$VerifyEmailOtpRequestFromJson(json);
}
