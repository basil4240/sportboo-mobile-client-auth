// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_email_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerifyEmailOtpRequest _$VerifyEmailOtpRequestFromJson(
    Map<String, dynamic> json) {
  return _VerifyEmailOtpRequest.fromJson(json);
}

/// @nodoc
mixin _$VerifyEmailOtpRequest {
  String get otp => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyEmailOtpRequestCopyWith<VerifyEmailOtpRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyEmailOtpRequestCopyWith<$Res> {
  factory $VerifyEmailOtpRequestCopyWith(VerifyEmailOtpRequest value,
          $Res Function(VerifyEmailOtpRequest) then) =
      _$VerifyEmailOtpRequestCopyWithImpl<$Res, VerifyEmailOtpRequest>;
  @useResult
  $Res call({String otp, int userId});
}

/// @nodoc
class _$VerifyEmailOtpRequestCopyWithImpl<$Res,
        $Val extends VerifyEmailOtpRequest>
    implements $VerifyEmailOtpRequestCopyWith<$Res> {
  _$VerifyEmailOtpRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$VerifyEmailOtpRequestImplCopyWith<$Res>
    implements $VerifyEmailOtpRequestCopyWith<$Res> {
  factory _$$VerifyEmailOtpRequestImplCopyWith(
          _$VerifyEmailOtpRequestImpl value,
          $Res Function(_$VerifyEmailOtpRequestImpl) then) =
      __$$VerifyEmailOtpRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String otp, int userId});
}

/// @nodoc
class __$$VerifyEmailOtpRequestImplCopyWithImpl<$Res>
    extends _$VerifyEmailOtpRequestCopyWithImpl<$Res,
        _$VerifyEmailOtpRequestImpl>
    implements _$$VerifyEmailOtpRequestImplCopyWith<$Res> {
  __$$VerifyEmailOtpRequestImplCopyWithImpl(_$VerifyEmailOtpRequestImpl _value,
      $Res Function(_$VerifyEmailOtpRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
    Object? userId = null,
  }) {
    return _then(_$VerifyEmailOtpRequestImpl(
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
class _$VerifyEmailOtpRequestImpl implements _VerifyEmailOtpRequest {
  const _$VerifyEmailOtpRequestImpl({required this.otp, required this.userId});

  factory _$VerifyEmailOtpRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyEmailOtpRequestImplFromJson(json);

  @override
  final String otp;
  @override
  final int userId;

  @override
  String toString() {
    return 'VerifyEmailOtpRequest(otp: $otp, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyEmailOtpRequestImpl &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, otp, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyEmailOtpRequestImplCopyWith<_$VerifyEmailOtpRequestImpl>
      get copyWith => __$$VerifyEmailOtpRequestImplCopyWithImpl<
          _$VerifyEmailOtpRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyEmailOtpRequestImplToJson(
      this,
    );
  }
}

abstract class _VerifyEmailOtpRequest implements VerifyEmailOtpRequest {
  const factory _VerifyEmailOtpRequest(
      {required final String otp,
      required final int userId}) = _$VerifyEmailOtpRequestImpl;

  factory _VerifyEmailOtpRequest.fromJson(Map<String, dynamic> json) =
      _$VerifyEmailOtpRequestImpl.fromJson;

  @override
  String get otp;
  @override
  int get userId;
  @override
  @JsonKey(ignore: true)
  _$$VerifyEmailOtpRequestImplCopyWith<_$VerifyEmailOtpRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
