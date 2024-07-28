// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) {
  return _LoginResponse.fromJson(json);
}

/// @nodoc
mixin _$LoginResponse {
  String get message => throw _privateConstructorUsedError;
  UserData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginResponseCopyWith<LoginResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResponseCopyWith<$Res> {
  factory $LoginResponseCopyWith(
          LoginResponse value, $Res Function(LoginResponse) then) =
      _$LoginResponseCopyWithImpl<$Res, LoginResponse>;
  @useResult
  $Res call({String message, UserData data});

  $UserDataCopyWith<$Res> get data;
}

/// @nodoc
class _$LoginResponseCopyWithImpl<$Res, $Val extends LoginResponse>
    implements $LoginResponseCopyWith<$Res> {
  _$LoginResponseCopyWithImpl(this._value, this._then);

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
              as UserData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDataCopyWith<$Res> get data {
    return $UserDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginResponseImplCopyWith<$Res>
    implements $LoginResponseCopyWith<$Res> {
  factory _$$LoginResponseImplCopyWith(
          _$LoginResponseImpl value, $Res Function(_$LoginResponseImpl) then) =
      __$$LoginResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, UserData data});

  @override
  $UserDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$LoginResponseImplCopyWithImpl<$Res>
    extends _$LoginResponseCopyWithImpl<$Res, _$LoginResponseImpl>
    implements _$$LoginResponseImplCopyWith<$Res> {
  __$$LoginResponseImplCopyWithImpl(
      _$LoginResponseImpl _value, $Res Function(_$LoginResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$LoginResponseImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginResponseImpl implements _LoginResponse {
  const _$LoginResponseImpl({required this.message, required this.data});

  factory _$LoginResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginResponseImplFromJson(json);

  @override
  final String message;
  @override
  final UserData data;

  @override
  String toString() {
    return 'LoginResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginResponseImplCopyWith<_$LoginResponseImpl> get copyWith =>
      __$$LoginResponseImplCopyWithImpl<_$LoginResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginResponseImplToJson(
      this,
    );
  }
}

abstract class _LoginResponse implements LoginResponse {
  const factory _LoginResponse(
      {required final String message,
      required final UserData data}) = _$LoginResponseImpl;

  factory _LoginResponse.fromJson(Map<String, dynamic> json) =
      _$LoginResponseImpl.fromJson;

  @override
  String get message;
  @override
  UserData get data;
  @override
  @JsonKey(ignore: true)
  _$$LoginResponseImplCopyWith<_$LoginResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserData _$UserDataFromJson(Map<String, dynamic> json) {
  return _UserData.fromJson(json);
}

/// @nodoc
mixin _$UserData {
  int get id => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String? get pin => throw _privateConstructorUsedError;
  String get androidShareLink => throw _privateConstructorUsedError;
  String get iosShareLink => throw _privateConstructorUsedError;
  String get sportbooId => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String get profileImgUrl => throw _privateConstructorUsedError;
  String? get deviceId => throw _privateConstructorUsedError;
  String get accountStatus => throw _privateConstructorUsedError;
  int get unreadNotifications => throw _privateConstructorUsedError;
  int get unreadMessages => throw _privateConstructorUsedError;
  String get accessToken => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;
  ResidentialAddress get residentialAddress =>
      throw _privateConstructorUsedError;
  Preferences get preferences => throw _privateConstructorUsedError;
  ExternalCommunication get externalCommunication =>
      throw _privateConstructorUsedError;
  InAppCommunication get inAppCommunication =>
      throw _privateConstructorUsedError;
  SecurityPreferences get securityPreferences =>
      throw _privateConstructorUsedError;
  WalletActivities get walletActivities => throw _privateConstructorUsedError;
  SecurityAlerts get securityAlerts => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDataCopyWith<UserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) then) =
      _$UserDataCopyWithImpl<$Res, UserData>;
  @useResult
  $Res call(
      {int id,
      String fullName,
      String email,
      String userName,
      String? pin,
      String androidShareLink,
      String iosShareLink,
      String sportbooId,
      String? phone,
      String profileImgUrl,
      String? deviceId,
      String accountStatus,
      int unreadNotifications,
      int unreadMessages,
      String accessToken,
      String refreshToken,
      ResidentialAddress residentialAddress,
      Preferences preferences,
      ExternalCommunication externalCommunication,
      InAppCommunication inAppCommunication,
      SecurityPreferences securityPreferences,
      WalletActivities walletActivities,
      SecurityAlerts securityAlerts,
      DateTime createdAt});

  $ResidentialAddressCopyWith<$Res> get residentialAddress;
  $PreferencesCopyWith<$Res> get preferences;
  $ExternalCommunicationCopyWith<$Res> get externalCommunication;
  $InAppCommunicationCopyWith<$Res> get inAppCommunication;
  $SecurityPreferencesCopyWith<$Res> get securityPreferences;
  $WalletActivitiesCopyWith<$Res> get walletActivities;
  $SecurityAlertsCopyWith<$Res> get securityAlerts;
}

/// @nodoc
class _$UserDataCopyWithImpl<$Res, $Val extends UserData>
    implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? email = null,
    Object? userName = null,
    Object? pin = freezed,
    Object? androidShareLink = null,
    Object? iosShareLink = null,
    Object? sportbooId = null,
    Object? phone = freezed,
    Object? profileImgUrl = null,
    Object? deviceId = freezed,
    Object? accountStatus = null,
    Object? unreadNotifications = null,
    Object? unreadMessages = null,
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? residentialAddress = null,
    Object? preferences = null,
    Object? externalCommunication = null,
    Object? inAppCommunication = null,
    Object? securityPreferences = null,
    Object? walletActivities = null,
    Object? securityAlerts = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      pin: freezed == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String?,
      androidShareLink: null == androidShareLink
          ? _value.androidShareLink
          : androidShareLink // ignore: cast_nullable_to_non_nullable
              as String,
      iosShareLink: null == iosShareLink
          ? _value.iosShareLink
          : iosShareLink // ignore: cast_nullable_to_non_nullable
              as String,
      sportbooId: null == sportbooId
          ? _value.sportbooId
          : sportbooId // ignore: cast_nullable_to_non_nullable
              as String,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImgUrl: null == profileImgUrl
          ? _value.profileImgUrl
          : profileImgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      accountStatus: null == accountStatus
          ? _value.accountStatus
          : accountStatus // ignore: cast_nullable_to_non_nullable
              as String,
      unreadNotifications: null == unreadNotifications
          ? _value.unreadNotifications
          : unreadNotifications // ignore: cast_nullable_to_non_nullable
              as int,
      unreadMessages: null == unreadMessages
          ? _value.unreadMessages
          : unreadMessages // ignore: cast_nullable_to_non_nullable
              as int,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      residentialAddress: null == residentialAddress
          ? _value.residentialAddress
          : residentialAddress // ignore: cast_nullable_to_non_nullable
              as ResidentialAddress,
      preferences: null == preferences
          ? _value.preferences
          : preferences // ignore: cast_nullable_to_non_nullable
              as Preferences,
      externalCommunication: null == externalCommunication
          ? _value.externalCommunication
          : externalCommunication // ignore: cast_nullable_to_non_nullable
              as ExternalCommunication,
      inAppCommunication: null == inAppCommunication
          ? _value.inAppCommunication
          : inAppCommunication // ignore: cast_nullable_to_non_nullable
              as InAppCommunication,
      securityPreferences: null == securityPreferences
          ? _value.securityPreferences
          : securityPreferences // ignore: cast_nullable_to_non_nullable
              as SecurityPreferences,
      walletActivities: null == walletActivities
          ? _value.walletActivities
          : walletActivities // ignore: cast_nullable_to_non_nullable
              as WalletActivities,
      securityAlerts: null == securityAlerts
          ? _value.securityAlerts
          : securityAlerts // ignore: cast_nullable_to_non_nullable
              as SecurityAlerts,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResidentialAddressCopyWith<$Res> get residentialAddress {
    return $ResidentialAddressCopyWith<$Res>(_value.residentialAddress,
        (value) {
      return _then(_value.copyWith(residentialAddress: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PreferencesCopyWith<$Res> get preferences {
    return $PreferencesCopyWith<$Res>(_value.preferences, (value) {
      return _then(_value.copyWith(preferences: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ExternalCommunicationCopyWith<$Res> get externalCommunication {
    return $ExternalCommunicationCopyWith<$Res>(_value.externalCommunication,
        (value) {
      return _then(_value.copyWith(externalCommunication: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $InAppCommunicationCopyWith<$Res> get inAppCommunication {
    return $InAppCommunicationCopyWith<$Res>(_value.inAppCommunication,
        (value) {
      return _then(_value.copyWith(inAppCommunication: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SecurityPreferencesCopyWith<$Res> get securityPreferences {
    return $SecurityPreferencesCopyWith<$Res>(_value.securityPreferences,
        (value) {
      return _then(_value.copyWith(securityPreferences: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WalletActivitiesCopyWith<$Res> get walletActivities {
    return $WalletActivitiesCopyWith<$Res>(_value.walletActivities, (value) {
      return _then(_value.copyWith(walletActivities: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SecurityAlertsCopyWith<$Res> get securityAlerts {
    return $SecurityAlertsCopyWith<$Res>(_value.securityAlerts, (value) {
      return _then(_value.copyWith(securityAlerts: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserDataImplCopyWith<$Res>
    implements $UserDataCopyWith<$Res> {
  factory _$$UserDataImplCopyWith(
          _$UserDataImpl value, $Res Function(_$UserDataImpl) then) =
      __$$UserDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String fullName,
      String email,
      String userName,
      String? pin,
      String androidShareLink,
      String iosShareLink,
      String sportbooId,
      String? phone,
      String profileImgUrl,
      String? deviceId,
      String accountStatus,
      int unreadNotifications,
      int unreadMessages,
      String accessToken,
      String refreshToken,
      ResidentialAddress residentialAddress,
      Preferences preferences,
      ExternalCommunication externalCommunication,
      InAppCommunication inAppCommunication,
      SecurityPreferences securityPreferences,
      WalletActivities walletActivities,
      SecurityAlerts securityAlerts,
      DateTime createdAt});

  @override
  $ResidentialAddressCopyWith<$Res> get residentialAddress;
  @override
  $PreferencesCopyWith<$Res> get preferences;
  @override
  $ExternalCommunicationCopyWith<$Res> get externalCommunication;
  @override
  $InAppCommunicationCopyWith<$Res> get inAppCommunication;
  @override
  $SecurityPreferencesCopyWith<$Res> get securityPreferences;
  @override
  $WalletActivitiesCopyWith<$Res> get walletActivities;
  @override
  $SecurityAlertsCopyWith<$Res> get securityAlerts;
}

/// @nodoc
class __$$UserDataImplCopyWithImpl<$Res>
    extends _$UserDataCopyWithImpl<$Res, _$UserDataImpl>
    implements _$$UserDataImplCopyWith<$Res> {
  __$$UserDataImplCopyWithImpl(
      _$UserDataImpl _value, $Res Function(_$UserDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? email = null,
    Object? userName = null,
    Object? pin = freezed,
    Object? androidShareLink = null,
    Object? iosShareLink = null,
    Object? sportbooId = null,
    Object? phone = freezed,
    Object? profileImgUrl = null,
    Object? deviceId = freezed,
    Object? accountStatus = null,
    Object? unreadNotifications = null,
    Object? unreadMessages = null,
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? residentialAddress = null,
    Object? preferences = null,
    Object? externalCommunication = null,
    Object? inAppCommunication = null,
    Object? securityPreferences = null,
    Object? walletActivities = null,
    Object? securityAlerts = null,
    Object? createdAt = null,
  }) {
    return _then(_$UserDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      pin: freezed == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String?,
      androidShareLink: null == androidShareLink
          ? _value.androidShareLink
          : androidShareLink // ignore: cast_nullable_to_non_nullable
              as String,
      iosShareLink: null == iosShareLink
          ? _value.iosShareLink
          : iosShareLink // ignore: cast_nullable_to_non_nullable
              as String,
      sportbooId: null == sportbooId
          ? _value.sportbooId
          : sportbooId // ignore: cast_nullable_to_non_nullable
              as String,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImgUrl: null == profileImgUrl
          ? _value.profileImgUrl
          : profileImgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      accountStatus: null == accountStatus
          ? _value.accountStatus
          : accountStatus // ignore: cast_nullable_to_non_nullable
              as String,
      unreadNotifications: null == unreadNotifications
          ? _value.unreadNotifications
          : unreadNotifications // ignore: cast_nullable_to_non_nullable
              as int,
      unreadMessages: null == unreadMessages
          ? _value.unreadMessages
          : unreadMessages // ignore: cast_nullable_to_non_nullable
              as int,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      residentialAddress: null == residentialAddress
          ? _value.residentialAddress
          : residentialAddress // ignore: cast_nullable_to_non_nullable
              as ResidentialAddress,
      preferences: null == preferences
          ? _value.preferences
          : preferences // ignore: cast_nullable_to_non_nullable
              as Preferences,
      externalCommunication: null == externalCommunication
          ? _value.externalCommunication
          : externalCommunication // ignore: cast_nullable_to_non_nullable
              as ExternalCommunication,
      inAppCommunication: null == inAppCommunication
          ? _value.inAppCommunication
          : inAppCommunication // ignore: cast_nullable_to_non_nullable
              as InAppCommunication,
      securityPreferences: null == securityPreferences
          ? _value.securityPreferences
          : securityPreferences // ignore: cast_nullable_to_non_nullable
              as SecurityPreferences,
      walletActivities: null == walletActivities
          ? _value.walletActivities
          : walletActivities // ignore: cast_nullable_to_non_nullable
              as WalletActivities,
      securityAlerts: null == securityAlerts
          ? _value.securityAlerts
          : securityAlerts // ignore: cast_nullable_to_non_nullable
              as SecurityAlerts,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDataImpl implements _UserData {
  const _$UserDataImpl(
      {required this.id,
      required this.fullName,
      required this.email,
      required this.userName,
      this.pin,
      required this.androidShareLink,
      required this.iosShareLink,
      required this.sportbooId,
      this.phone,
      required this.profileImgUrl,
      this.deviceId,
      required this.accountStatus,
      required this.unreadNotifications,
      required this.unreadMessages,
      required this.accessToken,
      required this.refreshToken,
      required this.residentialAddress,
      required this.preferences,
      required this.externalCommunication,
      required this.inAppCommunication,
      required this.securityPreferences,
      required this.walletActivities,
      required this.securityAlerts,
      required this.createdAt});

  factory _$UserDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDataImplFromJson(json);

  @override
  final int id;
  @override
  final String fullName;
  @override
  final String email;
  @override
  final String userName;
  @override
  final String? pin;
  @override
  final String androidShareLink;
  @override
  final String iosShareLink;
  @override
  final String sportbooId;
  @override
  final String? phone;
  @override
  final String profileImgUrl;
  @override
  final String? deviceId;
  @override
  final String accountStatus;
  @override
  final int unreadNotifications;
  @override
  final int unreadMessages;
  @override
  final String accessToken;
  @override
  final String refreshToken;
  @override
  final ResidentialAddress residentialAddress;
  @override
  final Preferences preferences;
  @override
  final ExternalCommunication externalCommunication;
  @override
  final InAppCommunication inAppCommunication;
  @override
  final SecurityPreferences securityPreferences;
  @override
  final WalletActivities walletActivities;
  @override
  final SecurityAlerts securityAlerts;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'UserData(id: $id, fullName: $fullName, email: $email, userName: $userName, pin: $pin, androidShareLink: $androidShareLink, iosShareLink: $iosShareLink, sportbooId: $sportbooId, phone: $phone, profileImgUrl: $profileImgUrl, deviceId: $deviceId, accountStatus: $accountStatus, unreadNotifications: $unreadNotifications, unreadMessages: $unreadMessages, accessToken: $accessToken, refreshToken: $refreshToken, residentialAddress: $residentialAddress, preferences: $preferences, externalCommunication: $externalCommunication, inAppCommunication: $inAppCommunication, securityPreferences: $securityPreferences, walletActivities: $walletActivities, securityAlerts: $securityAlerts, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.pin, pin) || other.pin == pin) &&
            (identical(other.androidShareLink, androidShareLink) ||
                other.androidShareLink == androidShareLink) &&
            (identical(other.iosShareLink, iosShareLink) ||
                other.iosShareLink == iosShareLink) &&
            (identical(other.sportbooId, sportbooId) ||
                other.sportbooId == sportbooId) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.profileImgUrl, profileImgUrl) ||
                other.profileImgUrl == profileImgUrl) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.accountStatus, accountStatus) ||
                other.accountStatus == accountStatus) &&
            (identical(other.unreadNotifications, unreadNotifications) ||
                other.unreadNotifications == unreadNotifications) &&
            (identical(other.unreadMessages, unreadMessages) ||
                other.unreadMessages == unreadMessages) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.residentialAddress, residentialAddress) ||
                other.residentialAddress == residentialAddress) &&
            (identical(other.preferences, preferences) ||
                other.preferences == preferences) &&
            (identical(other.externalCommunication, externalCommunication) ||
                other.externalCommunication == externalCommunication) &&
            (identical(other.inAppCommunication, inAppCommunication) ||
                other.inAppCommunication == inAppCommunication) &&
            (identical(other.securityPreferences, securityPreferences) ||
                other.securityPreferences == securityPreferences) &&
            (identical(other.walletActivities, walletActivities) ||
                other.walletActivities == walletActivities) &&
            (identical(other.securityAlerts, securityAlerts) ||
                other.securityAlerts == securityAlerts) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        fullName,
        email,
        userName,
        pin,
        androidShareLink,
        iosShareLink,
        sportbooId,
        phone,
        profileImgUrl,
        deviceId,
        accountStatus,
        unreadNotifications,
        unreadMessages,
        accessToken,
        refreshToken,
        residentialAddress,
        preferences,
        externalCommunication,
        inAppCommunication,
        securityPreferences,
        walletActivities,
        securityAlerts,
        createdAt
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDataImplCopyWith<_$UserDataImpl> get copyWith =>
      __$$UserDataImplCopyWithImpl<_$UserDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDataImplToJson(
      this,
    );
  }
}

abstract class _UserData implements UserData {
  const factory _UserData(
      {required final int id,
      required final String fullName,
      required final String email,
      required final String userName,
      final String? pin,
      required final String androidShareLink,
      required final String iosShareLink,
      required final String sportbooId,
      final String? phone,
      required final String profileImgUrl,
      final String? deviceId,
      required final String accountStatus,
      required final int unreadNotifications,
      required final int unreadMessages,
      required final String accessToken,
      required final String refreshToken,
      required final ResidentialAddress residentialAddress,
      required final Preferences preferences,
      required final ExternalCommunication externalCommunication,
      required final InAppCommunication inAppCommunication,
      required final SecurityPreferences securityPreferences,
      required final WalletActivities walletActivities,
      required final SecurityAlerts securityAlerts,
      required final DateTime createdAt}) = _$UserDataImpl;

  factory _UserData.fromJson(Map<String, dynamic> json) =
      _$UserDataImpl.fromJson;

  @override
  int get id;
  @override
  String get fullName;
  @override
  String get email;
  @override
  String get userName;
  @override
  String? get pin;
  @override
  String get androidShareLink;
  @override
  String get iosShareLink;
  @override
  String get sportbooId;
  @override
  String? get phone;
  @override
  String get profileImgUrl;
  @override
  String? get deviceId;
  @override
  String get accountStatus;
  @override
  int get unreadNotifications;
  @override
  int get unreadMessages;
  @override
  String get accessToken;
  @override
  String get refreshToken;
  @override
  ResidentialAddress get residentialAddress;
  @override
  Preferences get preferences;
  @override
  ExternalCommunication get externalCommunication;
  @override
  InAppCommunication get inAppCommunication;
  @override
  SecurityPreferences get securityPreferences;
  @override
  WalletActivities get walletActivities;
  @override
  SecurityAlerts get securityAlerts;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$UserDataImplCopyWith<_$UserDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResidentialAddress _$ResidentialAddressFromJson(Map<String, dynamic> json) {
  return _ResidentialAddress.fromJson(json);
}

/// @nodoc
mixin _$ResidentialAddress {
  int get id => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get postCode => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResidentialAddressCopyWith<ResidentialAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResidentialAddressCopyWith<$Res> {
  factory $ResidentialAddressCopyWith(
          ResidentialAddress value, $Res Function(ResidentialAddress) then) =
      _$ResidentialAddressCopyWithImpl<$Res, ResidentialAddress>;
  @useResult
  $Res call(
      {int id,
      String? address,
      String? city,
      String? state,
      String? country,
      String? postCode,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$ResidentialAddressCopyWithImpl<$Res, $Val extends ResidentialAddress>
    implements $ResidentialAddressCopyWith<$Res> {
  _$ResidentialAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? address = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? country = freezed,
    Object? postCode = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      postCode: freezed == postCode
          ? _value.postCode
          : postCode // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResidentialAddressImplCopyWith<$Res>
    implements $ResidentialAddressCopyWith<$Res> {
  factory _$$ResidentialAddressImplCopyWith(_$ResidentialAddressImpl value,
          $Res Function(_$ResidentialAddressImpl) then) =
      __$$ResidentialAddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? address,
      String? city,
      String? state,
      String? country,
      String? postCode,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$ResidentialAddressImplCopyWithImpl<$Res>
    extends _$ResidentialAddressCopyWithImpl<$Res, _$ResidentialAddressImpl>
    implements _$$ResidentialAddressImplCopyWith<$Res> {
  __$$ResidentialAddressImplCopyWithImpl(_$ResidentialAddressImpl _value,
      $Res Function(_$ResidentialAddressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? address = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? country = freezed,
    Object? postCode = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$ResidentialAddressImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      postCode: freezed == postCode
          ? _value.postCode
          : postCode // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResidentialAddressImpl implements _ResidentialAddress {
  const _$ResidentialAddressImpl(
      {required this.id,
      this.address,
      this.city,
      this.state,
      this.country,
      this.postCode,
      required this.createdAt,
      required this.updatedAt});

  factory _$ResidentialAddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResidentialAddressImplFromJson(json);

  @override
  final int id;
  @override
  final String? address;
  @override
  final String? city;
  @override
  final String? state;
  @override
  final String? country;
  @override
  final String? postCode;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'ResidentialAddress(id: $id, address: $address, city: $city, state: $state, country: $country, postCode: $postCode, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResidentialAddressImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.postCode, postCode) ||
                other.postCode == postCode) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, address, city, state,
      country, postCode, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResidentialAddressImplCopyWith<_$ResidentialAddressImpl> get copyWith =>
      __$$ResidentialAddressImplCopyWithImpl<_$ResidentialAddressImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResidentialAddressImplToJson(
      this,
    );
  }
}

abstract class _ResidentialAddress implements ResidentialAddress {
  const factory _ResidentialAddress(
      {required final int id,
      final String? address,
      final String? city,
      final String? state,
      final String? country,
      final String? postCode,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$ResidentialAddressImpl;

  factory _ResidentialAddress.fromJson(Map<String, dynamic> json) =
      _$ResidentialAddressImpl.fromJson;

  @override
  int get id;
  @override
  String? get address;
  @override
  String? get city;
  @override
  String? get state;
  @override
  String? get country;
  @override
  String? get postCode;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$ResidentialAddressImplCopyWith<_$ResidentialAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Preferences _$PreferencesFromJson(Map<String, dynamic> json) {
  return _Preferences.fromJson(json);
}

/// @nodoc
mixin _$Preferences {
  int get id => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  String? get timeZone => throw _privateConstructorUsedError;
  String? get oddsDisplay => throw _privateConstructorUsedError;
  String? get maximumInactivePeriod => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PreferencesCopyWith<Preferences> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreferencesCopyWith<$Res> {
  factory $PreferencesCopyWith(
          Preferences value, $Res Function(Preferences) then) =
      _$PreferencesCopyWithImpl<$Res, Preferences>;
  @useResult
  $Res call(
      {int id,
      String? language,
      String? timeZone,
      String? oddsDisplay,
      String? maximumInactivePeriod,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$PreferencesCopyWithImpl<$Res, $Val extends Preferences>
    implements $PreferencesCopyWith<$Res> {
  _$PreferencesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? language = freezed,
    Object? timeZone = freezed,
    Object? oddsDisplay = freezed,
    Object? maximumInactivePeriod = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      timeZone: freezed == timeZone
          ? _value.timeZone
          : timeZone // ignore: cast_nullable_to_non_nullable
              as String?,
      oddsDisplay: freezed == oddsDisplay
          ? _value.oddsDisplay
          : oddsDisplay // ignore: cast_nullable_to_non_nullable
              as String?,
      maximumInactivePeriod: freezed == maximumInactivePeriod
          ? _value.maximumInactivePeriod
          : maximumInactivePeriod // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PreferencesImplCopyWith<$Res>
    implements $PreferencesCopyWith<$Res> {
  factory _$$PreferencesImplCopyWith(
          _$PreferencesImpl value, $Res Function(_$PreferencesImpl) then) =
      __$$PreferencesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? language,
      String? timeZone,
      String? oddsDisplay,
      String? maximumInactivePeriod,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$PreferencesImplCopyWithImpl<$Res>
    extends _$PreferencesCopyWithImpl<$Res, _$PreferencesImpl>
    implements _$$PreferencesImplCopyWith<$Res> {
  __$$PreferencesImplCopyWithImpl(
      _$PreferencesImpl _value, $Res Function(_$PreferencesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? language = freezed,
    Object? timeZone = freezed,
    Object? oddsDisplay = freezed,
    Object? maximumInactivePeriod = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$PreferencesImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      timeZone: freezed == timeZone
          ? _value.timeZone
          : timeZone // ignore: cast_nullable_to_non_nullable
              as String?,
      oddsDisplay: freezed == oddsDisplay
          ? _value.oddsDisplay
          : oddsDisplay // ignore: cast_nullable_to_non_nullable
              as String?,
      maximumInactivePeriod: freezed == maximumInactivePeriod
          ? _value.maximumInactivePeriod
          : maximumInactivePeriod // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PreferencesImpl implements _Preferences {
  const _$PreferencesImpl(
      {required this.id,
      this.language,
      this.timeZone,
      this.oddsDisplay,
      this.maximumInactivePeriod,
      required this.createdAt,
      required this.updatedAt});

  factory _$PreferencesImpl.fromJson(Map<String, dynamic> json) =>
      _$$PreferencesImplFromJson(json);

  @override
  final int id;
  @override
  final String? language;
  @override
  final String? timeZone;
  @override
  final String? oddsDisplay;
  @override
  final String? maximumInactivePeriod;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Preferences(id: $id, language: $language, timeZone: $timeZone, oddsDisplay: $oddsDisplay, maximumInactivePeriod: $maximumInactivePeriod, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreferencesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.timeZone, timeZone) ||
                other.timeZone == timeZone) &&
            (identical(other.oddsDisplay, oddsDisplay) ||
                other.oddsDisplay == oddsDisplay) &&
            (identical(other.maximumInactivePeriod, maximumInactivePeriod) ||
                other.maximumInactivePeriod == maximumInactivePeriod) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, language, timeZone,
      oddsDisplay, maximumInactivePeriod, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PreferencesImplCopyWith<_$PreferencesImpl> get copyWith =>
      __$$PreferencesImplCopyWithImpl<_$PreferencesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PreferencesImplToJson(
      this,
    );
  }
}

abstract class _Preferences implements Preferences {
  const factory _Preferences(
      {required final int id,
      final String? language,
      final String? timeZone,
      final String? oddsDisplay,
      final String? maximumInactivePeriod,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$PreferencesImpl;

  factory _Preferences.fromJson(Map<String, dynamic> json) =
      _$PreferencesImpl.fromJson;

  @override
  int get id;
  @override
  String? get language;
  @override
  String? get timeZone;
  @override
  String? get oddsDisplay;
  @override
  String? get maximumInactivePeriod;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$PreferencesImplCopyWith<_$PreferencesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExternalCommunication _$ExternalCommunicationFromJson(
    Map<String, dynamic> json) {
  return _ExternalCommunication.fromJson(json);
}

/// @nodoc
mixin _$ExternalCommunication {
  int get id => throw _privateConstructorUsedError;
  bool? get pushNotifications => throw _privateConstructorUsedError;
  bool? get sms => throw _privateConstructorUsedError;
  bool? get emails => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExternalCommunicationCopyWith<ExternalCommunication> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExternalCommunicationCopyWith<$Res> {
  factory $ExternalCommunicationCopyWith(ExternalCommunication value,
          $Res Function(ExternalCommunication) then) =
      _$ExternalCommunicationCopyWithImpl<$Res, ExternalCommunication>;
  @useResult
  $Res call(
      {int id,
      bool? pushNotifications,
      bool? sms,
      bool? emails,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$ExternalCommunicationCopyWithImpl<$Res,
        $Val extends ExternalCommunication>
    implements $ExternalCommunicationCopyWith<$Res> {
  _$ExternalCommunicationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? pushNotifications = freezed,
    Object? sms = freezed,
    Object? emails = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      pushNotifications: freezed == pushNotifications
          ? _value.pushNotifications
          : pushNotifications // ignore: cast_nullable_to_non_nullable
              as bool?,
      sms: freezed == sms
          ? _value.sms
          : sms // ignore: cast_nullable_to_non_nullable
              as bool?,
      emails: freezed == emails
          ? _value.emails
          : emails // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExternalCommunicationImplCopyWith<$Res>
    implements $ExternalCommunicationCopyWith<$Res> {
  factory _$$ExternalCommunicationImplCopyWith(
          _$ExternalCommunicationImpl value,
          $Res Function(_$ExternalCommunicationImpl) then) =
      __$$ExternalCommunicationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      bool? pushNotifications,
      bool? sms,
      bool? emails,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$ExternalCommunicationImplCopyWithImpl<$Res>
    extends _$ExternalCommunicationCopyWithImpl<$Res,
        _$ExternalCommunicationImpl>
    implements _$$ExternalCommunicationImplCopyWith<$Res> {
  __$$ExternalCommunicationImplCopyWithImpl(_$ExternalCommunicationImpl _value,
      $Res Function(_$ExternalCommunicationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? pushNotifications = freezed,
    Object? sms = freezed,
    Object? emails = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$ExternalCommunicationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      pushNotifications: freezed == pushNotifications
          ? _value.pushNotifications
          : pushNotifications // ignore: cast_nullable_to_non_nullable
              as bool?,
      sms: freezed == sms
          ? _value.sms
          : sms // ignore: cast_nullable_to_non_nullable
              as bool?,
      emails: freezed == emails
          ? _value.emails
          : emails // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExternalCommunicationImpl implements _ExternalCommunication {
  const _$ExternalCommunicationImpl(
      {required this.id,
      this.pushNotifications,
      this.sms,
      this.emails,
      required this.createdAt,
      required this.updatedAt});

  factory _$ExternalCommunicationImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExternalCommunicationImplFromJson(json);

  @override
  final int id;
  @override
  final bool? pushNotifications;
  @override
  final bool? sms;
  @override
  final bool? emails;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'ExternalCommunication(id: $id, pushNotifications: $pushNotifications, sms: $sms, emails: $emails, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExternalCommunicationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.pushNotifications, pushNotifications) ||
                other.pushNotifications == pushNotifications) &&
            (identical(other.sms, sms) || other.sms == sms) &&
            (identical(other.emails, emails) || other.emails == emails) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, pushNotifications, sms, emails, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExternalCommunicationImplCopyWith<_$ExternalCommunicationImpl>
      get copyWith => __$$ExternalCommunicationImplCopyWithImpl<
          _$ExternalCommunicationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExternalCommunicationImplToJson(
      this,
    );
  }
}

abstract class _ExternalCommunication implements ExternalCommunication {
  const factory _ExternalCommunication(
      {required final int id,
      final bool? pushNotifications,
      final bool? sms,
      final bool? emails,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$ExternalCommunicationImpl;

  factory _ExternalCommunication.fromJson(Map<String, dynamic> json) =
      _$ExternalCommunicationImpl.fromJson;

  @override
  int get id;
  @override
  bool? get pushNotifications;
  @override
  bool? get sms;
  @override
  bool? get emails;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$ExternalCommunicationImplCopyWith<_$ExternalCommunicationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

InAppCommunication _$InAppCommunicationFromJson(Map<String, dynamic> json) {
  return _InAppCommunication.fromJson(json);
}

/// @nodoc
mixin _$InAppCommunication {
  int get id => throw _privateConstructorUsedError;
  bool? get messages => throw _privateConstructorUsedError;
  bool? get popUps => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InAppCommunicationCopyWith<InAppCommunication> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InAppCommunicationCopyWith<$Res> {
  factory $InAppCommunicationCopyWith(
          InAppCommunication value, $Res Function(InAppCommunication) then) =
      _$InAppCommunicationCopyWithImpl<$Res, InAppCommunication>;
  @useResult
  $Res call(
      {int id,
      bool? messages,
      bool? popUps,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$InAppCommunicationCopyWithImpl<$Res, $Val extends InAppCommunication>
    implements $InAppCommunicationCopyWith<$Res> {
  _$InAppCommunicationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? messages = freezed,
    Object? popUps = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      messages: freezed == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as bool?,
      popUps: freezed == popUps
          ? _value.popUps
          : popUps // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InAppCommunicationImplCopyWith<$Res>
    implements $InAppCommunicationCopyWith<$Res> {
  factory _$$InAppCommunicationImplCopyWith(_$InAppCommunicationImpl value,
          $Res Function(_$InAppCommunicationImpl) then) =
      __$$InAppCommunicationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      bool? messages,
      bool? popUps,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$InAppCommunicationImplCopyWithImpl<$Res>
    extends _$InAppCommunicationCopyWithImpl<$Res, _$InAppCommunicationImpl>
    implements _$$InAppCommunicationImplCopyWith<$Res> {
  __$$InAppCommunicationImplCopyWithImpl(_$InAppCommunicationImpl _value,
      $Res Function(_$InAppCommunicationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? messages = freezed,
    Object? popUps = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$InAppCommunicationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      messages: freezed == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as bool?,
      popUps: freezed == popUps
          ? _value.popUps
          : popUps // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InAppCommunicationImpl implements _InAppCommunication {
  const _$InAppCommunicationImpl(
      {required this.id,
      this.messages,
      this.popUps,
      required this.createdAt,
      required this.updatedAt});

  factory _$InAppCommunicationImpl.fromJson(Map<String, dynamic> json) =>
      _$$InAppCommunicationImplFromJson(json);

  @override
  final int id;
  @override
  final bool? messages;
  @override
  final bool? popUps;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'InAppCommunication(id: $id, messages: $messages, popUps: $popUps, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InAppCommunicationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.messages, messages) ||
                other.messages == messages) &&
            (identical(other.popUps, popUps) || other.popUps == popUps) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, messages, popUps, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InAppCommunicationImplCopyWith<_$InAppCommunicationImpl> get copyWith =>
      __$$InAppCommunicationImplCopyWithImpl<_$InAppCommunicationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InAppCommunicationImplToJson(
      this,
    );
  }
}

abstract class _InAppCommunication implements InAppCommunication {
  const factory _InAppCommunication(
      {required final int id,
      final bool? messages,
      final bool? popUps,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$InAppCommunicationImpl;

  factory _InAppCommunication.fromJson(Map<String, dynamic> json) =
      _$InAppCommunicationImpl.fromJson;

  @override
  int get id;
  @override
  bool? get messages;
  @override
  bool? get popUps;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$InAppCommunicationImplCopyWith<_$InAppCommunicationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SecurityPreferences _$SecurityPreferencesFromJson(Map<String, dynamic> json) {
  return _SecurityPreferences.fromJson(json);
}

/// @nodoc
mixin _$SecurityPreferences {
  int get id => throw _privateConstructorUsedError;
  bool? get twoStepVerification => throw _privateConstructorUsedError;
  bool? get biometric => throw _privateConstructorUsedError;
  bool? get screenShots => throw _privateConstructorUsedError;
  bool? get disableAccount => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SecurityPreferencesCopyWith<SecurityPreferences> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecurityPreferencesCopyWith<$Res> {
  factory $SecurityPreferencesCopyWith(
          SecurityPreferences value, $Res Function(SecurityPreferences) then) =
      _$SecurityPreferencesCopyWithImpl<$Res, SecurityPreferences>;
  @useResult
  $Res call(
      {int id,
      bool? twoStepVerification,
      bool? biometric,
      bool? screenShots,
      bool? disableAccount,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$SecurityPreferencesCopyWithImpl<$Res, $Val extends SecurityPreferences>
    implements $SecurityPreferencesCopyWith<$Res> {
  _$SecurityPreferencesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? twoStepVerification = freezed,
    Object? biometric = freezed,
    Object? screenShots = freezed,
    Object? disableAccount = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      twoStepVerification: freezed == twoStepVerification
          ? _value.twoStepVerification
          : twoStepVerification // ignore: cast_nullable_to_non_nullable
              as bool?,
      biometric: freezed == biometric
          ? _value.biometric
          : biometric // ignore: cast_nullable_to_non_nullable
              as bool?,
      screenShots: freezed == screenShots
          ? _value.screenShots
          : screenShots // ignore: cast_nullable_to_non_nullable
              as bool?,
      disableAccount: freezed == disableAccount
          ? _value.disableAccount
          : disableAccount // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SecurityPreferencesImplCopyWith<$Res>
    implements $SecurityPreferencesCopyWith<$Res> {
  factory _$$SecurityPreferencesImplCopyWith(_$SecurityPreferencesImpl value,
          $Res Function(_$SecurityPreferencesImpl) then) =
      __$$SecurityPreferencesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      bool? twoStepVerification,
      bool? biometric,
      bool? screenShots,
      bool? disableAccount,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$SecurityPreferencesImplCopyWithImpl<$Res>
    extends _$SecurityPreferencesCopyWithImpl<$Res, _$SecurityPreferencesImpl>
    implements _$$SecurityPreferencesImplCopyWith<$Res> {
  __$$SecurityPreferencesImplCopyWithImpl(_$SecurityPreferencesImpl _value,
      $Res Function(_$SecurityPreferencesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? twoStepVerification = freezed,
    Object? biometric = freezed,
    Object? screenShots = freezed,
    Object? disableAccount = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$SecurityPreferencesImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      twoStepVerification: freezed == twoStepVerification
          ? _value.twoStepVerification
          : twoStepVerification // ignore: cast_nullable_to_non_nullable
              as bool?,
      biometric: freezed == biometric
          ? _value.biometric
          : biometric // ignore: cast_nullable_to_non_nullable
              as bool?,
      screenShots: freezed == screenShots
          ? _value.screenShots
          : screenShots // ignore: cast_nullable_to_non_nullable
              as bool?,
      disableAccount: freezed == disableAccount
          ? _value.disableAccount
          : disableAccount // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SecurityPreferencesImpl implements _SecurityPreferences {
  const _$SecurityPreferencesImpl(
      {required this.id,
      this.twoStepVerification,
      this.biometric,
      this.screenShots,
      this.disableAccount,
      required this.createdAt,
      required this.updatedAt});

  factory _$SecurityPreferencesImpl.fromJson(Map<String, dynamic> json) =>
      _$$SecurityPreferencesImplFromJson(json);

  @override
  final int id;
  @override
  final bool? twoStepVerification;
  @override
  final bool? biometric;
  @override
  final bool? screenShots;
  @override
  final bool? disableAccount;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'SecurityPreferences(id: $id, twoStepVerification: $twoStepVerification, biometric: $biometric, screenShots: $screenShots, disableAccount: $disableAccount, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SecurityPreferencesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.twoStepVerification, twoStepVerification) ||
                other.twoStepVerification == twoStepVerification) &&
            (identical(other.biometric, biometric) ||
                other.biometric == biometric) &&
            (identical(other.screenShots, screenShots) ||
                other.screenShots == screenShots) &&
            (identical(other.disableAccount, disableAccount) ||
                other.disableAccount == disableAccount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, twoStepVerification,
      biometric, screenShots, disableAccount, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SecurityPreferencesImplCopyWith<_$SecurityPreferencesImpl> get copyWith =>
      __$$SecurityPreferencesImplCopyWithImpl<_$SecurityPreferencesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SecurityPreferencesImplToJson(
      this,
    );
  }
}

abstract class _SecurityPreferences implements SecurityPreferences {
  const factory _SecurityPreferences(
      {required final int id,
      final bool? twoStepVerification,
      final bool? biometric,
      final bool? screenShots,
      final bool? disableAccount,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$SecurityPreferencesImpl;

  factory _SecurityPreferences.fromJson(Map<String, dynamic> json) =
      _$SecurityPreferencesImpl.fromJson;

  @override
  int get id;
  @override
  bool? get twoStepVerification;
  @override
  bool? get biometric;
  @override
  bool? get screenShots;
  @override
  bool? get disableAccount;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$SecurityPreferencesImplCopyWith<_$SecurityPreferencesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WalletActivities _$WalletActivitiesFromJson(Map<String, dynamic> json) {
  return _WalletActivities.fromJson(json);
}

/// @nodoc
mixin _$WalletActivities {
  int get id => throw _privateConstructorUsedError;
  bool? get pushNotifications => throw _privateConstructorUsedError;
  bool? get sms => throw _privateConstructorUsedError;
  bool? get emails => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletActivitiesCopyWith<WalletActivities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletActivitiesCopyWith<$Res> {
  factory $WalletActivitiesCopyWith(
          WalletActivities value, $Res Function(WalletActivities) then) =
      _$WalletActivitiesCopyWithImpl<$Res, WalletActivities>;
  @useResult
  $Res call(
      {int id,
      bool? pushNotifications,
      bool? sms,
      bool? emails,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$WalletActivitiesCopyWithImpl<$Res, $Val extends WalletActivities>
    implements $WalletActivitiesCopyWith<$Res> {
  _$WalletActivitiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? pushNotifications = freezed,
    Object? sms = freezed,
    Object? emails = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      pushNotifications: freezed == pushNotifications
          ? _value.pushNotifications
          : pushNotifications // ignore: cast_nullable_to_non_nullable
              as bool?,
      sms: freezed == sms
          ? _value.sms
          : sms // ignore: cast_nullable_to_non_nullable
              as bool?,
      emails: freezed == emails
          ? _value.emails
          : emails // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WalletActivitiesImplCopyWith<$Res>
    implements $WalletActivitiesCopyWith<$Res> {
  factory _$$WalletActivitiesImplCopyWith(_$WalletActivitiesImpl value,
          $Res Function(_$WalletActivitiesImpl) then) =
      __$$WalletActivitiesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      bool? pushNotifications,
      bool? sms,
      bool? emails,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$WalletActivitiesImplCopyWithImpl<$Res>
    extends _$WalletActivitiesCopyWithImpl<$Res, _$WalletActivitiesImpl>
    implements _$$WalletActivitiesImplCopyWith<$Res> {
  __$$WalletActivitiesImplCopyWithImpl(_$WalletActivitiesImpl _value,
      $Res Function(_$WalletActivitiesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? pushNotifications = freezed,
    Object? sms = freezed,
    Object? emails = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$WalletActivitiesImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      pushNotifications: freezed == pushNotifications
          ? _value.pushNotifications
          : pushNotifications // ignore: cast_nullable_to_non_nullable
              as bool?,
      sms: freezed == sms
          ? _value.sms
          : sms // ignore: cast_nullable_to_non_nullable
              as bool?,
      emails: freezed == emails
          ? _value.emails
          : emails // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletActivitiesImpl implements _WalletActivities {
  const _$WalletActivitiesImpl(
      {required this.id,
      this.pushNotifications,
      this.sms,
      this.emails,
      required this.createdAt,
      required this.updatedAt});

  factory _$WalletActivitiesImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletActivitiesImplFromJson(json);

  @override
  final int id;
  @override
  final bool? pushNotifications;
  @override
  final bool? sms;
  @override
  final bool? emails;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'WalletActivities(id: $id, pushNotifications: $pushNotifications, sms: $sms, emails: $emails, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletActivitiesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.pushNotifications, pushNotifications) ||
                other.pushNotifications == pushNotifications) &&
            (identical(other.sms, sms) || other.sms == sms) &&
            (identical(other.emails, emails) || other.emails == emails) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, pushNotifications, sms, emails, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletActivitiesImplCopyWith<_$WalletActivitiesImpl> get copyWith =>
      __$$WalletActivitiesImplCopyWithImpl<_$WalletActivitiesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletActivitiesImplToJson(
      this,
    );
  }
}

abstract class _WalletActivities implements WalletActivities {
  const factory _WalletActivities(
      {required final int id,
      final bool? pushNotifications,
      final bool? sms,
      final bool? emails,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$WalletActivitiesImpl;

  factory _WalletActivities.fromJson(Map<String, dynamic> json) =
      _$WalletActivitiesImpl.fromJson;

  @override
  int get id;
  @override
  bool? get pushNotifications;
  @override
  bool? get sms;
  @override
  bool? get emails;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$WalletActivitiesImplCopyWith<_$WalletActivitiesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SecurityAlerts _$SecurityAlertsFromJson(Map<String, dynamic> json) {
  return _SecurityAlerts.fromJson(json);
}

/// @nodoc
mixin _$SecurityAlerts {
  int get id => throw _privateConstructorUsedError;
  bool? get pushNotifications => throw _privateConstructorUsedError;
  bool? get sms => throw _privateConstructorUsedError;
  bool? get emails => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SecurityAlertsCopyWith<SecurityAlerts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecurityAlertsCopyWith<$Res> {
  factory $SecurityAlertsCopyWith(
          SecurityAlerts value, $Res Function(SecurityAlerts) then) =
      _$SecurityAlertsCopyWithImpl<$Res, SecurityAlerts>;
  @useResult
  $Res call(
      {int id,
      bool? pushNotifications,
      bool? sms,
      bool? emails,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$SecurityAlertsCopyWithImpl<$Res, $Val extends SecurityAlerts>
    implements $SecurityAlertsCopyWith<$Res> {
  _$SecurityAlertsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? pushNotifications = freezed,
    Object? sms = freezed,
    Object? emails = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      pushNotifications: freezed == pushNotifications
          ? _value.pushNotifications
          : pushNotifications // ignore: cast_nullable_to_non_nullable
              as bool?,
      sms: freezed == sms
          ? _value.sms
          : sms // ignore: cast_nullable_to_non_nullable
              as bool?,
      emails: freezed == emails
          ? _value.emails
          : emails // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SecurityAlertsImplCopyWith<$Res>
    implements $SecurityAlertsCopyWith<$Res> {
  factory _$$SecurityAlertsImplCopyWith(_$SecurityAlertsImpl value,
          $Res Function(_$SecurityAlertsImpl) then) =
      __$$SecurityAlertsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      bool? pushNotifications,
      bool? sms,
      bool? emails,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$SecurityAlertsImplCopyWithImpl<$Res>
    extends _$SecurityAlertsCopyWithImpl<$Res, _$SecurityAlertsImpl>
    implements _$$SecurityAlertsImplCopyWith<$Res> {
  __$$SecurityAlertsImplCopyWithImpl(
      _$SecurityAlertsImpl _value, $Res Function(_$SecurityAlertsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? pushNotifications = freezed,
    Object? sms = freezed,
    Object? emails = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$SecurityAlertsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      pushNotifications: freezed == pushNotifications
          ? _value.pushNotifications
          : pushNotifications // ignore: cast_nullable_to_non_nullable
              as bool?,
      sms: freezed == sms
          ? _value.sms
          : sms // ignore: cast_nullable_to_non_nullable
              as bool?,
      emails: freezed == emails
          ? _value.emails
          : emails // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SecurityAlertsImpl implements _SecurityAlerts {
  const _$SecurityAlertsImpl(
      {required this.id,
      this.pushNotifications,
      this.sms,
      this.emails,
      required this.createdAt,
      required this.updatedAt});

  factory _$SecurityAlertsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SecurityAlertsImplFromJson(json);

  @override
  final int id;
  @override
  final bool? pushNotifications;
  @override
  final bool? sms;
  @override
  final bool? emails;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'SecurityAlerts(id: $id, pushNotifications: $pushNotifications, sms: $sms, emails: $emails, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SecurityAlertsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.pushNotifications, pushNotifications) ||
                other.pushNotifications == pushNotifications) &&
            (identical(other.sms, sms) || other.sms == sms) &&
            (identical(other.emails, emails) || other.emails == emails) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, pushNotifications, sms, emails, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SecurityAlertsImplCopyWith<_$SecurityAlertsImpl> get copyWith =>
      __$$SecurityAlertsImplCopyWithImpl<_$SecurityAlertsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SecurityAlertsImplToJson(
      this,
    );
  }
}

abstract class _SecurityAlerts implements SecurityAlerts {
  const factory _SecurityAlerts(
      {required final int id,
      final bool? pushNotifications,
      final bool? sms,
      final bool? emails,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$SecurityAlertsImpl;

  factory _SecurityAlerts.fromJson(Map<String, dynamic> json) =
      _$SecurityAlertsImpl.fromJson;

  @override
  int get id;
  @override
  bool? get pushNotifications;
  @override
  bool? get sms;
  @override
  bool? get emails;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$SecurityAlertsImplCopyWith<_$SecurityAlertsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
