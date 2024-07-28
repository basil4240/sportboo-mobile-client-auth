// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_registration_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserRegistrationResponseImpl _$$UserRegistrationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UserRegistrationResponseImpl(
      message: json['message'] as String,
      data: UserRegistrationData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserRegistrationResponseImplToJson(
        _$UserRegistrationResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

_$UserRegistrationDataImpl _$$UserRegistrationDataImplFromJson(
        Map<String, dynamic> json) =>
    _$UserRegistrationDataImpl(
      fullname: json['fullname'] as String,
      userId: (json['userId'] as num).toInt(),
      email: json['email'] as String,
      sportbooId: json['sportbooId'] as String,
    );

Map<String, dynamic> _$$UserRegistrationDataImplToJson(
        _$UserRegistrationDataImpl instance) =>
    <String, dynamic>{
      'fullname': instance.fullname,
      'userId': instance.userId,
      'email': instance.email,
      'sportbooId': instance.sportbooId,
    };
