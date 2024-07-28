// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_registration_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserRegistrationRequestImpl _$$UserRegistrationRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UserRegistrationRequestImpl(
      fullname: json['fullname'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      username: json['username'] as String,
    );

Map<String, dynamic> _$$UserRegistrationRequestImplToJson(
        _$UserRegistrationRequestImpl instance) =>
    <String, dynamic>{
      'fullname': instance.fullname,
      'email': instance.email,
      'password': instance.password,
      'username': instance.username,
    };
