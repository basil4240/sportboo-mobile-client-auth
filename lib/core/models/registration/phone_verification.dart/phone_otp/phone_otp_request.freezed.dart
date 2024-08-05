// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'phone_otp_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PhoneOtpRequest _$PhoneOtpRequestFromJson(Map<String, dynamic> json) {
  return _PhoneOtpRequest.fromJson(json);
}

/// @nodoc
mixin _$PhoneOtpRequest {
  String get phone => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhoneOtpRequestCopyWith<PhoneOtpRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneOtpRequestCopyWith<$Res> {
  factory $PhoneOtpRequestCopyWith(
          PhoneOtpRequest value, $Res Function(PhoneOtpRequest) then) =
      _$PhoneOtpRequestCopyWithImpl<$Res, PhoneOtpRequest>;
  @useResult
  $Res call({String phone, int userId});
}

/// @nodoc
class _$PhoneOtpRequestCopyWithImpl<$Res, $Val extends PhoneOtpRequest>
    implements $PhoneOtpRequestCopyWith<$Res> {
  _$PhoneOtpRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhoneOtpRequestImplCopyWith<$Res>
    implements $PhoneOtpRequestCopyWith<$Res> {
  factory _$$PhoneOtpRequestImplCopyWith(_$PhoneOtpRequestImpl value,
          $Res Function(_$PhoneOtpRequestImpl) then) =
      __$$PhoneOtpRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phone, int userId});
}

/// @nodoc
class __$$PhoneOtpRequestImplCopyWithImpl<$Res>
    extends _$PhoneOtpRequestCopyWithImpl<$Res, _$PhoneOtpRequestImpl>
    implements _$$PhoneOtpRequestImplCopyWith<$Res> {
  __$$PhoneOtpRequestImplCopyWithImpl(
      _$PhoneOtpRequestImpl _value, $Res Function(_$PhoneOtpRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? userId = null,
  }) {
    return _then(_$PhoneOtpRequestImpl(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PhoneOtpRequestImpl implements _PhoneOtpRequest {
  const _$PhoneOtpRequestImpl({required this.phone, required this.userId});

  factory _$PhoneOtpRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhoneOtpRequestImplFromJson(json);

  @override
  final String phone;
  @override
  final int userId;

  @override
  String toString() {
    return 'PhoneOtpRequest(phone: $phone, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneOtpRequestImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, phone, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneOtpRequestImplCopyWith<_$PhoneOtpRequestImpl> get copyWith =>
      __$$PhoneOtpRequestImplCopyWithImpl<_$PhoneOtpRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhoneOtpRequestImplToJson(
      this,
    );
  }
}

abstract class _PhoneOtpRequest implements PhoneOtpRequest {
  const factory _PhoneOtpRequest(
      {required final String phone,
      required final int userId}) = _$PhoneOtpRequestImpl;

  factory _PhoneOtpRequest.fromJson(Map<String, dynamic> json) =
      _$PhoneOtpRequestImpl.fromJson;

  @override
  String get phone;
  @override
  int get userId;
  @override
  @JsonKey(ignore: true)
  _$$PhoneOtpRequestImplCopyWith<_$PhoneOtpRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
