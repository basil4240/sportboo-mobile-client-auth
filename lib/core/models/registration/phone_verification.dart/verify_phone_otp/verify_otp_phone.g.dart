// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_phone.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifyPhoneRequestImpl _$$VerifyPhoneRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifyPhoneRequestImpl(
      otp: json['otp'] as String,
      userId: (json['userId'] as num).toInt(),
    );

Map<String, dynamic> _$$VerifyPhoneRequestImplToJson(
        _$VerifyPhoneRequestImpl instance) =>
    <String, dynamic>{
      'otp': instance.otp,
      'userId': instance.userId,
    };
