import 'package:equatable/equatable.dart';

class SportbooUserEntity extends Equatable {
  const SportbooUserEntity({
    required this.id,
    required this.fullName,
    required this.email,
    required this.userName,
    required this.pin,
    required this.androidShareLink,
    required this.iosShareLink,
    required this.sportbooId,
    required this.phone,
    required this.profileImgUrl,
    required this.deviceId,
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
    required this.createdAt,
  });

  final int? id;
  final String? fullName;
  final String? email;
  final String? userName;
  final dynamic pin;
  final String? androidShareLink;
  final String? iosShareLink;
  final String? sportbooId;
  final String? phone;
  final String? profileImgUrl;
  final String? deviceId;
  final String? accountStatus;
  final int? unreadNotifications;
  final int? unreadMessages;
  final String? accessToken;
  final String? refreshToken;
  final ResidentialAddressEntity? residentialAddress;
  final PreferencesEntity? preferences;
  final ExternalCommunicationEntity? externalCommunication;
  final InAppCommunicationEntity? inAppCommunication;
  final SecurityPreferencesEntity? securityPreferences;
  final ExternalCommunicationEntity? walletActivities;
  final ExternalCommunicationEntity? securityAlerts;
  final DateTime? createdAt;

  @override
  List<Object?> get props => [
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
        createdAt,
      ];
}

class ExternalCommunicationEntity extends Equatable {
  const ExternalCommunicationEntity({
    required this.id,
    required this.pushNotifications,
    required this.sms,
    required this.emails,
    required this.createdAt,
    required this.updatedAt,
  });

  final int? id;
  final dynamic pushNotifications;
  final dynamic sms;
  final dynamic emails;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  @override
  List<Object?> get props => [
        id,
        pushNotifications,
        sms,
        emails,
        createdAt,
        updatedAt,
      ];
}

class InAppCommunicationEntity extends Equatable {
  const InAppCommunicationEntity({
    required this.id,
    required this.messages,
    required this.popUps,
    required this.createdAt,
    required this.updatedAt,
  });

  final int? id;
  final dynamic messages;
  final dynamic popUps;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  @override
  List<Object?> get props => [
        id,
        messages,
        popUps,
        createdAt,
        updatedAt,
      ];
}

class PreferencesEntity extends Equatable {
  const PreferencesEntity({
    required this.id,
    required this.language,
    required this.timeZone,
    required this.oddsDisplay,
    required this.maximumInactivePeriod,
    required this.createdAt,
    required this.updatedAt,
  });

  final int? id;
  final dynamic language;
  final dynamic timeZone;
  final dynamic oddsDisplay;
  final dynamic maximumInactivePeriod;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  @override
  List<Object?> get props => [
        id,
        language,
        timeZone,
        oddsDisplay,
        maximumInactivePeriod,
        createdAt,
        updatedAt,
      ];
}

class ResidentialAddressEntity extends Equatable {
  const ResidentialAddressEntity({
    required this.id,
    required this.address,
    required this.city,
    required this.state,
    required this.country,
    required this.postCode,
    required this.createdAt,
    required this.updatedAt,
  });

  final int? id;
  final dynamic address;
  final dynamic city;
  final dynamic state;
  final dynamic country;
  final dynamic postCode;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  @override
  List<Object?> get props => [
        id,
        address,
        city,
        state,
        country,
        postCode,
        createdAt,
        updatedAt,
      ];
}

class SecurityPreferencesEntity extends Equatable {
  const SecurityPreferencesEntity({
    required this.id,
    required this.twoStepVerification,
    required this.biometric,
    required this.screenShots,
    required this.disableAccount,
    required this.createdAt,
    required this.updatedAt,
  });

  final int? id;
  final dynamic twoStepVerification;
  final dynamic biometric;
  final dynamic screenShots;
  final dynamic disableAccount;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  @override
  List<Object?> get props => [
        id,
        twoStepVerification,
        biometric,
        screenShots,
        disableAccount,
        createdAt,
        updatedAt,
      ];
}
