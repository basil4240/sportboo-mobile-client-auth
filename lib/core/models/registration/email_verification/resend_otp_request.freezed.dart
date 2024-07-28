// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resend_otp_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResendOtpRequest _$ResendOtpRequestFromJson(Map<String, dynamic> json) {
  return _ResendOtpRequest.fromJson(json);
}

/// @nodoc
mixin _$ResendOtpRequest {
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResendOtpRequestCopyWith<ResendOtpRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResendOtpRequestCopyWith<$Res> {
  factory $ResendOtpRequestCopyWith(
          ResendOtpRequest value, $Res Function(ResendOtpRequest) then) =
      _$ResendOtpRequestCopyWithImpl<$Res, ResendOtpRequest>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$ResendOtpRequestCopyWithImpl<$Res, $Val extends ResendOtpRequest>
    implements $ResendOtpRequestCopyWith<$Res> {
  _$ResendOtpRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResendOtpRequestImplCopyWith<$Res>
    implements $ResendOtpRequestCopyWith<$Res> {
  factory _$$ResendOtpRequestImplCopyWith(_$ResendOtpRequestImpl value,
          $Res Function(_$ResendOtpRequestImpl) then) =
      __$$ResendOtpRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$ResendOtpRequestImplCopyWithImpl<$Res>
    extends _$ResendOtpRequestCopyWithImpl<$Res, _$ResendOtpRequestImpl>
    implements _$$ResendOtpRequestImplCopyWith<$Res> {
  __$$ResendOtpRequestImplCopyWithImpl(_$ResendOtpRequestImpl _value,
      $Res Function(_$ResendOtpRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$ResendOtpRequestImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResendOtpRequestImpl implements _ResendOtpRequest {
  const _$ResendOtpRequestImpl({required this.email});

  factory _$ResendOtpRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResendOtpRequestImplFromJson(json);

  @override
  final String email;

  @override
  String toString() {
    return 'ResendOtpRequest(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResendOtpRequestImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResendOtpRequestImplCopyWith<_$ResendOtpRequestImpl> get copyWith =>
      __$$ResendOtpRequestImplCopyWithImpl<_$ResendOtpRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResendOtpRequestImplToJson(
      this,
    );
  }
}

abstract class _ResendOtpRequest implements ResendOtpRequest {
  const factory _ResendOtpRequest({required final String email}) =
      _$ResendOtpRequestImpl;

  factory _ResendOtpRequest.fromJson(Map<String, dynamic> json) =
      _$ResendOtpRequestImpl.fromJson;

  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$ResendOtpRequestImplCopyWith<_$ResendOtpRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
