import 'package:freezed_annotation/freezed_annotation.dart';

part 'phone_otp_request.freezed.dart';
part 'phone_otp_request.g.dart';

@freezed
class PhoneOtpRequest with _$PhoneOtpRequest {
  const factory PhoneOtpRequest({
    required String phone,
    required int userId
  }) = _PhoneOtpRequest;

  factory PhoneOtpRequest.fromJson(Map<String, dynamic> json) =>
      _$PhoneOtpRequestFromJson(json);
}
