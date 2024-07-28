// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_email_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifyEmailOtpRequestImpl _$$VerifyEmailOtpRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifyEmailOtpRequestImpl(
      otp: json['otp'] as String,
      userId: (json['userId'] as num).toInt(),
    );

Map<String, dynamic> _$$VerifyEmailOtpRequestImplToJson(
        _$VerifyEmailOtpRequestImpl instance) =>
    <String, dynamic>{
      'otp': instance.otp,
      'userId': instance.userId,
    };
