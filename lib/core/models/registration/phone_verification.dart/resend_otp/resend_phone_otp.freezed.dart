// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resend_phone_otp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResendPhoneOtp _$ResendPhoneOtpFromJson(Map<String, dynamic> json) {
  return _ResendPhoneOtp.fromJson(json);
}

/// @nodoc
mixin _$ResendPhoneOtp {
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResendPhoneOtpCopyWith<ResendPhoneOtp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResendPhoneOtpCopyWith<$Res> {
  factory $ResendPhoneOtpCopyWith(
          ResendPhoneOtp value, $Res Function(ResendPhoneOtp) then) =
      _$ResendPhoneOtpCopyWithImpl<$Res, ResendPhoneOtp>;
  @useResult
  $Res call({String email, String phone});
}

/// @nodoc
class _$ResendPhoneOtpCopyWithImpl<$Res, $Val extends ResendPhoneOtp>
    implements $ResendPhoneOtpCopyWith<$Res> {
  _$ResendPhoneOtpCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? phone = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResendPhoneOtpImplCopyWith<$Res>
    implements $ResendPhoneOtpCopyWith<$Res> {
  factory _$$ResendPhoneOtpImplCopyWith(_$ResendPhoneOtpImpl value,
          $Res Function(_$ResendPhoneOtpImpl) then) =
      __$$ResendPhoneOtpImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String phone});
}

/// @nodoc
class __$$ResendPhoneOtpImplCopyWithImpl<$Res>
    extends _$ResendPhoneOtpCopyWithImpl<$Res, _$ResendPhoneOtpImpl>
    implements _$$ResendPhoneOtpImplCopyWith<$Res> {
  __$$ResendPhoneOtpImplCopyWithImpl(
      _$ResendPhoneOtpImpl _value, $Res Function(_$ResendPhoneOtpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? phone = null,
  }) {
    return _then(_$ResendPhoneOtpImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResendPhoneOtpImpl implements _ResendPhoneOtp {
  const _$ResendPhoneOtpImpl({required this.email, required this.phone});

  factory _$ResendPhoneOtpImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResendPhoneOtpImplFromJson(json);

  @override
  final String email;
  @override
  final String phone;

  @override
  String toString() {
    return 'ResendPhoneOtp(email: $email, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResendPhoneOtpImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResendPhoneOtpImplCopyWith<_$ResendPhoneOtpImpl> get copyWith =>
      __$$ResendPhoneOtpImplCopyWithImpl<_$ResendPhoneOtpImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResendPhoneOtpImplToJson(
      this,
    );
  }
}

abstract class _ResendPhoneOtp implements ResendPhoneOtp {
  const factory _ResendPhoneOtp(
      {required final String email,
      required final String phone}) = _$ResendPhoneOtpImpl;

  factory _ResendPhoneOtp.fromJson(Map<String, dynamic> json) =
      _$ResendPhoneOtpImpl.fromJson;

  @override
  String get email;
  @override
  String get phone;
  @override
  @JsonKey(ignore: true)
  _$$ResendPhoneOtpImplCopyWith<_$ResendPhoneOtpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
