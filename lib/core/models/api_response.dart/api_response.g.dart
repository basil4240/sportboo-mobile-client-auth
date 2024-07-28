// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiResponseImpl _$$ApiResponseImplFromJson(Map<String, dynamic> json) =>
    _$ApiResponseImpl(
      isSuccess: json['isSuccess'] as bool? ?? false,
      message: json['message'] as String?,
      data: json['data'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$ApiResponseImplToJson(_$ApiResponseImpl instance) =>
    <String, dynamic>{
      'isSuccess': instance.isSuccess,
      'message': instance.message,
      'data': instance.data,
    };
