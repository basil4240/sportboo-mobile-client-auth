// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validate_username_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ValidateUsernameRequest _$ValidateUsernameRequestFromJson(
    Map<String, dynamic> json) {
  return _ValidateUsernameRequest.fromJson(json);
}

/// @nodoc
mixin _$ValidateUsernameRequest {
  String get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ValidateUsernameRequestCopyWith<ValidateUsernameRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidateUsernameRequestCopyWith<$Res> {
  factory $ValidateUsernameRequestCopyWith(ValidateUsernameRequest value,
          $Res Function(ValidateUsernameRequest) then) =
      _$ValidateUsernameRequestCopyWithImpl<$Res, ValidateUsernameRequest>;
  @useResult
  $Res call({String username});
}

/// @nodoc
class _$ValidateUsernameRequestCopyWithImpl<$Res,
        $Val extends ValidateUsernameRequest>
    implements $ValidateUsernameRequestCopyWith<$Res> {
  _$ValidateUsernameRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ValidateUsernameRequestImplCopyWith<$Res>
    implements $ValidateUsernameRequestCopyWith<$Res> {
  factory _$$ValidateUsernameRequestImplCopyWith(
          _$ValidateUsernameRequestImpl value,
          $Res Function(_$ValidateUsernameRequestImpl) then) =
      __$$ValidateUsernameRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username});
}

/// @nodoc
class __$$ValidateUsernameRequestImplCopyWithImpl<$Res>
    extends _$ValidateUsernameRequestCopyWithImpl<$Res,
        _$ValidateUsernameRequestImpl>
    implements _$$ValidateUsernameRequestImplCopyWith<$Res> {
  __$$ValidateUsernameRequestImplCopyWithImpl(
      _$ValidateUsernameRequestImpl _value,
      $Res Function(_$ValidateUsernameRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
  }) {
    return _then(_$ValidateUsernameRequestImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ValidateUsernameRequestImpl implements _ValidateUsernameRequest {
  const _$ValidateUsernameRequestImpl({required this.username});

  factory _$ValidateUsernameRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ValidateUsernameRequestImplFromJson(json);

  @override
  final String username;

  @override
  String toString() {
    return 'ValidateUsernameRequest(username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidateUsernameRequestImpl &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidateUsernameRequestImplCopyWith<_$ValidateUsernameRequestImpl>
      get copyWith => __$$ValidateUsernameRequestImplCopyWithImpl<
          _$ValidateUsernameRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ValidateUsernameRequestImplToJson(
      this,
    );
  }
}

abstract class _ValidateUsernameRequest implements ValidateUsernameRequest {
  const factory _ValidateUsernameRequest({required final String username}) =
      _$ValidateUsernameRequestImpl;

  factory _ValidateUsernameRequest.fromJson(Map<String, dynamic> json) =
      _$ValidateUsernameRequestImpl.fromJson;

  @override
  String get username;
  @override
  @JsonKey(ignore: true)
  _$$ValidateUsernameRequestImplCopyWith<_$ValidateUsernameRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
