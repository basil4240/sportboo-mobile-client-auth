// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginResponseImpl _$$LoginResponseImplFromJson(Map<String, dynamic> json) =>
    _$LoginResponseImpl(
      message: json['message'] as String,
      data: UserData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LoginResponseImplToJson(_$LoginResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

_$UserDataImpl _$$UserDataImplFromJson(Map<String, dynamic> json) =>
    _$UserDataImpl(
      id: (json['id'] as num).toInt(),
      fullName: json['fullName'] as String,
      email: json['email'] as String,
      userName: json['userName'] as String,
      pin: json['pin'] as String?,
      androidShareLink: json['androidShareLink'] as String,
      iosShareLink: json['iosShareLink'] as String,
      sportbooId: json['sportbooId'] as String,
      phone: json['phone'] as String?,
      profileImgUrl: json['profileImgUrl'] as String,
      deviceId: json['deviceId'] as String?,
      accountStatus: json['accountStatus'] as String,
      unreadNotifications: (json['unreadNotifications'] as num).toInt(),
      unreadMessages: (json['unreadMessages'] as num).toInt(),
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
      residentialAddress: ResidentialAddress.fromJson(
          json['residentialAddress'] as Map<String, dynamic>),
      preferences:
          Preferences.fromJson(json['preferences'] as Map<String, dynamic>),
      externalCommunication: ExternalCommunication.fromJson(
          json['externalCommunication'] as Map<String, dynamic>),
      inAppCommunication: InAppCommunication.fromJson(
          json['inAppCommunication'] as Map<String, dynamic>),
      securityPreferences: SecurityPreferences.fromJson(
          json['securityPreferences'] as Map<String, dynamic>),
      walletActivities: WalletActivities.fromJson(
          json['walletActivities'] as Map<String, dynamic>),
      securityAlerts: SecurityAlerts.fromJson(
          json['securityAlerts'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$UserDataImplToJson(_$UserDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'email': instance.email,
      'userName': instance.userName,
      'pin': instance.pin,
      'androidShareLink': instance.androidShareLink,
      'iosShareLink': instance.iosShareLink,
      'sportbooId': instance.sportbooId,
      'phone': instance.phone,
      'profileImgUrl': instance.profileImgUrl,
      'deviceId': instance.deviceId,
      'accountStatus': instance.accountStatus,
      'unreadNotifications': instance.unreadNotifications,
      'unreadMessages': instance.unreadMessages,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'residentialAddress': instance.residentialAddress,
      'preferences': instance.preferences,
      'externalCommunication': instance.externalCommunication,
      'inAppCommunication': instance.inAppCommunication,
      'securityPreferences': instance.securityPreferences,
      'walletActivities': instance.walletActivities,
      'securityAlerts': instance.securityAlerts,
      'createdAt': instance.createdAt.toIso8601String(),
    };

_$ResidentialAddressImpl _$$ResidentialAddressImplFromJson(
        Map<String, dynamic> json) =>
    _$ResidentialAddressImpl(
      id: (json['id'] as num).toInt(),
      address: json['address'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      country: json['country'] as String?,
      postCode: json['postCode'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$ResidentialAddressImplToJson(
        _$ResidentialAddressImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'address': instance.address,
      'city': instance.city,
      'state': instance.state,
      'country': instance.country,
      'postCode': instance.postCode,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$PreferencesImpl _$$PreferencesImplFromJson(Map<String, dynamic> json) =>
    _$PreferencesImpl(
      id: (json['id'] as num).toInt(),
      language: json['language'] as String?,
      timeZone: json['timeZone'] as String?,
      oddsDisplay: json['oddsDisplay'] as String?,
      maximumInactivePeriod: json['maximumInactivePeriod'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$PreferencesImplToJson(_$PreferencesImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'language': instance.language,
      'timeZone': instance.timeZone,
      'oddsDisplay': instance.oddsDisplay,
      'maximumInactivePeriod': instance.maximumInactivePeriod,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$ExternalCommunicationImpl _$$ExternalCommunicationImplFromJson(
        Map<String, dynamic> json) =>
    _$ExternalCommunicationImpl(
      id: (json['id'] as num).toInt(),
      pushNotifications: json['pushNotifications'] as bool?,
      sms: json['sms'] as bool?,
      emails: json['emails'] as bool?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$ExternalCommunicationImplToJson(
        _$ExternalCommunicationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'pushNotifications': instance.pushNotifications,
      'sms': instance.sms,
      'emails': instance.emails,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$InAppCommunicationImpl _$$InAppCommunicationImplFromJson(
        Map<String, dynamic> json) =>
    _$InAppCommunicationImpl(
      id: (json['id'] as num).toInt(),
      messages: json['messages'] as bool?,
      popUps: json['popUps'] as bool?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$InAppCommunicationImplToJson(
        _$InAppCommunicationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'messages': instance.messages,
      'popUps': instance.popUps,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$SecurityPreferencesImpl _$$SecurityPreferencesImplFromJson(
        Map<String, dynamic> json) =>
    _$SecurityPreferencesImpl(
      id: (json['id'] as num).toInt(),
      twoStepVerification: json['twoStepVerification'] as bool?,
      biometric: json['biometric'] as bool?,
      screenShots: json['screenShots'] as bool?,
      disableAccount: json['disableAccount'] as bool?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$SecurityPreferencesImplToJson(
        _$SecurityPreferencesImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'twoStepVerification': instance.twoStepVerification,
      'biometric': instance.biometric,
      'screenShots': instance.screenShots,
      'disableAccount': instance.disableAccount,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$WalletActivitiesImpl _$$WalletActivitiesImplFromJson(
        Map<String, dynamic> json) =>
    _$WalletActivitiesImpl(
      id: (json['id'] as num).toInt(),
      pushNotifications: json['pushNotifications'] as bool?,
      sms: json['sms'] as bool?,
      emails: json['emails'] as bool?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$WalletActivitiesImplToJson(
        _$WalletActivitiesImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'pushNotifications': instance.pushNotifications,
      'sms': instance.sms,
      'emails': instance.emails,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$SecurityAlertsImpl _$$SecurityAlertsImplFromJson(Map<String, dynamic> json) =>
    _$SecurityAlertsImpl(
      id: (json['id'] as num).toInt(),
      pushNotifications: json['pushNotifications'] as bool?,
      sms: json['sms'] as bool?,
      emails: json['emails'] as bool?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$SecurityAlertsImplToJson(
        _$SecurityAlertsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'pushNotifications': instance.pushNotifications,
      'sms': instance.sms,
      'emails': instance.emails,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
