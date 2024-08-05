import 'package:freezed_annotation/freezed_annotation.dart';

part 'resend_phone_otp.freezed.dart';
part 'resend_phone_otp.g.dart';

@freezed
class ResendPhoneOtp with _$ResendPhoneOtp {
  const factory ResendPhoneOtp({
    required String email,
    required String phone,
  }) = _ResendPhoneOtp;

  factory ResendPhoneOtp.fromJson(Map<String, dynamic> json) =>
      _$ResendPhoneOtpFromJson(json);
}
