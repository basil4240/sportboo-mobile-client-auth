// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phone_otp_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PhoneOtpRequestImpl _$$PhoneOtpRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$PhoneOtpRequestImpl(
      phone: json['phone'] as String,
      userId: (json['userId'] as num).toInt(),
    );

Map<String, dynamic> _$$PhoneOtpRequestImplToJson(
        _$PhoneOtpRequestImpl instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'userId': instance.userId,
    };
