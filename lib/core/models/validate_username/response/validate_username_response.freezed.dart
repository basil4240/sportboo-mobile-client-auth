// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validate_username_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ValidateUsernameResponse _$ValidateUsernameResponseFromJson(
    Map<String, dynamic> json) {
  return _ValidateUsernameResponse.fromJson(json);
}

/// @nodoc
mixin _$ValidateUsernameResponse {
  String get message => throw _privateConstructorUsedError;
  bool get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ValidateUsernameResponseCopyWith<ValidateUsernameResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidateUsernameResponseCopyWith<$Res> {
  factory $ValidateUsernameResponseCopyWith(ValidateUsernameResponse value,
          $Res Function(ValidateUsernameResponse) then) =
      _$ValidateUsernameResponseCopyWithImpl<$Res, ValidateUsernameResponse>;
  @useResult
  $Res call({String message, bool data});
}

/// @nodoc
class _$ValidateUsernameResponseCopyWithImpl<$Res,
        $Val extends ValidateUsernameResponse>
    implements $ValidateUsernameResponseCopyWith<$Res> {
  _$ValidateUsernameResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ValidateUsernameResponseImplCopyWith<$Res>
    implements $ValidateUsernameResponseCopyWith<$Res> {
  factory _$$ValidateUsernameResponseImplCopyWith(
          _$ValidateUsernameResponseImpl value,
          $Res Function(_$ValidateUsernameResponseImpl) then) =
      __$$ValidateUsernameResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, bool data});
}

/// @nodoc
class __$$ValidateUsernameResponseImplCopyWithImpl<$Res>
    extends _$ValidateUsernameResponseCopyWithImpl<$Res,
        _$ValidateUsernameResponseImpl>
    implements _$$ValidateUsernameResponseImplCopyWith<$Res> {
  __$$ValidateUsernameResponseImplCopyWithImpl(
      _$ValidateUsernameResponseImpl _value,
      $Res Function(_$ValidateUsernameResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$ValidateUsernameResponseImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ValidateUsernameResponseImpl implements _ValidateUsernameResponse {
  const _$ValidateUsernameResponseImpl(
      {required this.message, required this.data});

  factory _$ValidateUsernameResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ValidateUsernameResponseImplFromJson(json);

  @override
  final String message;
  @override
  final bool data;

  @override
  String toString() {
    return 'ValidateUsernameResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidateUsernameResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidateUsernameResponseImplCopyWith<_$ValidateUsernameResponseImpl>
      get copyWith => __$$ValidateUsernameResponseImplCopyWithImpl<
          _$ValidateUsernameResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ValidateUsernameResponseImplToJson(
      this,
    );
  }
}

abstract class _ValidateUsernameResponse implements ValidateUsernameResponse {
  const factory _ValidateUsernameResponse(
      {required final String message,
      required final bool data}) = _$ValidateUsernameResponseImpl;

  factory _ValidateUsernameResponse.fromJson(Map<String, dynamic> json) =
      _$ValidateUsernameResponseImpl.fromJson;

  @override
  String get message;
  @override
  bool get data;
  @override
  @JsonKey(ignore: true)
  _$$ValidateUsernameResponseImplCopyWith<_$ValidateUsernameResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
