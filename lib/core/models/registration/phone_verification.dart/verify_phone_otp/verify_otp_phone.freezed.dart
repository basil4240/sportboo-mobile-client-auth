// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_otp_phone.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerifyPhoneRequest _$VerifyPhoneRequestFromJson(Map<String, dynamic> json) {
  return _VerifyPhoneRequest.fromJson(json);
}

/// @nodoc
mixin _$VerifyPhoneRequest {
  String get otp => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyPhoneRequestCopyWith<VerifyPhoneRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyPhoneRequestCopyWith<$Res> {
  factory $VerifyPhoneRequestCopyWith(
          VerifyPhoneRequest value, $Res Function(VerifyPhoneRequest) then) =
      _$VerifyPhoneRequestCopyWithImpl<$Res, VerifyPhoneRequest>;
  @useResult
  $Res call({String otp, int userId});
}

/// @nodoc
class _$VerifyPhoneRequestCopyWithImpl<$Res, $Val extends VerifyPhoneRequest>
    implements $VerifyPhoneRequestCopyWith<$Res> {
  _$VerifyPhoneRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerifyPhoneRequestImplCopyWith<$Res>
    implements $VerifyPhoneRequestCopyWith<$Res> {
  factory _$$VerifyPhoneRequestImplCopyWith(_$VerifyPhoneRequestImpl value,
          $Res Function(_$VerifyPhoneRequestImpl) then) =
      __$$VerifyPhoneRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String otp, int userId});
}

/// @nodoc
class __$$VerifyPhoneRequestImplCopyWithImpl<$Res>
    extends _$VerifyPhoneRequestCopyWithImpl<$Res, _$VerifyPhoneRequestImpl>
    implements _$$VerifyPhoneRequestImplCopyWith<$Res> {
  __$$VerifyPhoneRequestImplCopyWithImpl(_$VerifyPhoneRequestImpl _value,
      $Res Function(_$VerifyPhoneRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
    Object? userId = null,
  }) {
    return _then(_$VerifyPhoneRequestImpl(
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
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
class _$VerifyPhoneRequestImpl implements _VerifyPhoneRequest {
  const _$VerifyPhoneRequestImpl({required this.otp, required this.userId});

  factory _$VerifyPhoneRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyPhoneRequestImplFromJson(json);

  @override
  final String otp;
  @override
  final int userId;

  @override
  String toString() {
    return 'VerifyPhoneRequest(otp: $otp, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyPhoneRequestImpl &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, otp, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyPhoneRequestImplCopyWith<_$VerifyPhoneRequestImpl> get copyWith =>
      __$$VerifyPhoneRequestImplCopyWithImpl<_$VerifyPhoneRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyPhoneRequestImplToJson(
      this,
    );
  }
}

abstract class _VerifyPhoneRequest implements VerifyPhoneRequest {
  const factory _VerifyPhoneRequest(
      {required final String otp,
      required final int userId}) = _$VerifyPhoneRequestImpl;

  factory _VerifyPhoneRequest.fromJson(Map<String, dynamic> json) =
      _$VerifyPhoneRequestImpl.fromJson;

  @override
  String get otp;
  @override
  int get userId;
  @override
  @JsonKey(ignore: true)
  _$$VerifyPhoneRequestImplCopyWith<_$VerifyPhoneRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
