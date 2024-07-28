// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_registration_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserRegistrationResponse _$UserRegistrationResponseFromJson(
    Map<String, dynamic> json) {
  return _UserRegistrationResponse.fromJson(json);
}

/// @nodoc
mixin _$UserRegistrationResponse {
  String get message => throw _privateConstructorUsedError;
  UserRegistrationData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserRegistrationResponseCopyWith<UserRegistrationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRegistrationResponseCopyWith<$Res> {
  factory $UserRegistrationResponseCopyWith(UserRegistrationResponse value,
          $Res Function(UserRegistrationResponse) then) =
      _$UserRegistrationResponseCopyWithImpl<$Res, UserRegistrationResponse>;
  @useResult
  $Res call({String message, UserRegistrationData data});

  $UserRegistrationDataCopyWith<$Res> get data;
}

/// @nodoc
class _$UserRegistrationResponseCopyWithImpl<$Res,
        $Val extends UserRegistrationResponse>
    implements $UserRegistrationResponseCopyWith<$Res> {
  _$UserRegistrationResponseCopyWithImpl(this._value, this._then);

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
              as UserRegistrationData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserRegistrationDataCopyWith<$Res> get data {
    return $UserRegistrationDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserRegistrationResponseImplCopyWith<$Res>
    implements $UserRegistrationResponseCopyWith<$Res> {
  factory _$$UserRegistrationResponseImplCopyWith(
          _$UserRegistrationResponseImpl value,
          $Res Function(_$UserRegistrationResponseImpl) then) =
      __$$UserRegistrationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, UserRegistrationData data});

  @override
  $UserRegistrationDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$UserRegistrationResponseImplCopyWithImpl<$Res>
    extends _$UserRegistrationResponseCopyWithImpl<$Res,
        _$UserRegistrationResponseImpl>
    implements _$$UserRegistrationResponseImplCopyWith<$Res> {
  __$$UserRegistrationResponseImplCopyWithImpl(
      _$UserRegistrationResponseImpl _value,
      $Res Function(_$UserRegistrationResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$UserRegistrationResponseImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserRegistrationData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserRegistrationResponseImpl implements _UserRegistrationResponse {
  const _$UserRegistrationResponseImpl(
      {required this.message, required this.data});

  factory _$UserRegistrationResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserRegistrationResponseImplFromJson(json);

  @override
  final String message;
  @override
  final UserRegistrationData data;

  @override
  String toString() {
    return 'UserRegistrationResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRegistrationResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRegistrationResponseImplCopyWith<_$UserRegistrationResponseImpl>
      get copyWith => __$$UserRegistrationResponseImplCopyWithImpl<
          _$UserRegistrationResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserRegistrationResponseImplToJson(
      this,
    );
  }
}

abstract class _UserRegistrationResponse implements UserRegistrationResponse {
  const factory _UserRegistrationResponse(
          {required final String message,
          required final UserRegistrationData data}) =
      _$UserRegistrationResponseImpl;

  factory _UserRegistrationResponse.fromJson(Map<String, dynamic> json) =
      _$UserRegistrationResponseImpl.fromJson;

  @override
  String get message;
  @override
  UserRegistrationData get data;
  @override
  @JsonKey(ignore: true)
  _$$UserRegistrationResponseImplCopyWith<_$UserRegistrationResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UserRegistrationData _$UserRegistrationDataFromJson(Map<String, dynamic> json) {
  return _UserRegistrationData.fromJson(json);
}

/// @nodoc
mixin _$UserRegistrationData {
  String get fullname => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get sportbooId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserRegistrationDataCopyWith<UserRegistrationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRegistrationDataCopyWith<$Res> {
  factory $UserRegistrationDataCopyWith(UserRegistrationData value,
          $Res Function(UserRegistrationData) then) =
      _$UserRegistrationDataCopyWithImpl<$Res, UserRegistrationData>;
  @useResult
  $Res call({String fullname, int userId, String email, String sportbooId});
}

/// @nodoc
class _$UserRegistrationDataCopyWithImpl<$Res,
        $Val extends UserRegistrationData>
    implements $UserRegistrationDataCopyWith<$Res> {
  _$UserRegistrationDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullname = null,
    Object? userId = null,
    Object? email = null,
    Object? sportbooId = null,
  }) {
    return _then(_value.copyWith(
      fullname: null == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      sportbooId: null == sportbooId
          ? _value.sportbooId
          : sportbooId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserRegistrationDataImplCopyWith<$Res>
    implements $UserRegistrationDataCopyWith<$Res> {
  factory _$$UserRegistrationDataImplCopyWith(_$UserRegistrationDataImpl value,
          $Res Function(_$UserRegistrationDataImpl) then) =
      __$$UserRegistrationDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String fullname, int userId, String email, String sportbooId});
}

/// @nodoc
class __$$UserRegistrationDataImplCopyWithImpl<$Res>
    extends _$UserRegistrationDataCopyWithImpl<$Res, _$UserRegistrationDataImpl>
    implements _$$UserRegistrationDataImplCopyWith<$Res> {
  __$$UserRegistrationDataImplCopyWithImpl(_$UserRegistrationDataImpl _value,
      $Res Function(_$UserRegistrationDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullname = null,
    Object? userId = null,
    Object? email = null,
    Object? sportbooId = null,
  }) {
    return _then(_$UserRegistrationDataImpl(
      fullname: null == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      sportbooId: null == sportbooId
          ? _value.sportbooId
          : sportbooId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserRegistrationDataImpl implements _UserRegistrationData {
  const _$UserRegistrationDataImpl(
      {required this.fullname,
      required this.userId,
      required this.email,
      required this.sportbooId});

  factory _$UserRegistrationDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserRegistrationDataImplFromJson(json);

  @override
  final String fullname;
  @override
  final int userId;
  @override
  final String email;
  @override
  final String sportbooId;

  @override
  String toString() {
    return 'UserRegistrationData(fullname: $fullname, userId: $userId, email: $email, sportbooId: $sportbooId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRegistrationDataImpl &&
            (identical(other.fullname, fullname) ||
                other.fullname == fullname) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.sportbooId, sportbooId) ||
                other.sportbooId == sportbooId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, fullname, userId, email, sportbooId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRegistrationDataImplCopyWith<_$UserRegistrationDataImpl>
      get copyWith =>
          __$$UserRegistrationDataImplCopyWithImpl<_$UserRegistrationDataImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserRegistrationDataImplToJson(
      this,
    );
  }
}

abstract class _UserRegistrationData implements UserRegistrationData {
  const factory _UserRegistrationData(
      {required final String fullname,
      required final int userId,
      required final String email,
      required final String sportbooId}) = _$UserRegistrationDataImpl;

  factory _UserRegistrationData.fromJson(Map<String, dynamic> json) =
      _$UserRegistrationDataImpl.fromJson;

  @override
  String get fullname;
  @override
  int get userId;
  @override
  String get email;
  @override
  String get sportbooId;
  @override
  @JsonKey(ignore: true)
  _$$UserRegistrationDataImplCopyWith<_$UserRegistrationDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
