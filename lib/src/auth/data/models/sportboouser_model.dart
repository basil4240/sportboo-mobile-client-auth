import 'package:equatable/equatable.dart';
import 'package:sportboo_mobile_client/core/unils/typedefs.dart';
import 'package:sportboo_mobile_client/src/auth/domain/entities/sportboo_user_entity.dart';

class SportbooUser extends SportbooUserEntity {
  const SportbooUser({
    required super.id,
    required super.fullName,
    required super.email,
    required super.userName,
    required super.pin,
    required super.androidShareLink,
    required super.iosShareLink,
    required super.sportbooId,
    required super.phone,
    required super.profileImgUrl,
    required super.deviceId,
    required super.accountStatus,
    required super.unreadNotifications,
    required super.unreadMessages,
    required super.accessToken,
    required super.refreshToken,
    required super.residentialAddress,
    required super.preferences,
    required super.externalCommunication,
    required super.inAppCommunication,
    required super.securityPreferences,
    required super.walletActivities,
    required super.securityAlerts,
    required super.createdAt,
  });

  factory SportbooUser.fromJson(DataMap json) {
    return SportbooUser(
      id: json["id"],
      fullName: json["fullName"],
      email: json["email"],
      userName: json["userName"],
      pin: json["pin"],
      androidShareLink: json["androidShareLink"],
      iosShareLink: json["iosShareLink"],
      sportbooId: json["sportbooId"],
      phone: json["phone"],
      profileImgUrl: json["profileImgUrl"],
      deviceId: json["deviceId"],
      accountStatus: json["accountStatus"],
      unreadNotifications: json["unreadNotifications"],
      unreadMessages: json["unreadMessages"],
      accessToken: json["accessToken"],
      refreshToken: json["refreshToken"],
      residentialAddress: json["residentialAddress"] == null
          ? null
          : ResidentialAddress.fromJson(json["residentialAddress"]),
      preferences: json["preferences"] == null
          ? null
          : Preferences.fromJson(json["preferences"]),
      externalCommunication: json["externalCommunication"] == null
          ? null
          : ExternalCommunication.fromJson(json["externalCommunication"]),
      inAppCommunication: json["inAppCommunication"] == null
          ? null
          : InAppCommunication.fromJson(json["inAppCommunication"]),
      securityPreferences: json["securityPreferences"] == null
          ? null
          : SecurityPreferences.fromJson(json["securityPreferences"]),
      walletActivities: json["walletActivities"] == null
          ? null
          : ExternalCommunication.fromJson(json["walletActivities"]),
      securityAlerts: json["securityAlerts"] == null
          ? null
          : ExternalCommunication.fromJson(json["securityAlerts"]),
      createdAt: DateTime.tryParse(json["createdAt"] ?? ""),
    );
  }

  DataMap toJson() => {
        "id": id,
        "fullName": fullName,
        "email": email,
        "userName": userName,
        "pin": pin,
        "androidShareLink": androidShareLink,
        "iosShareLink": iosShareLink,
        "sportbooId": sportbooId,
        "phone": phone,
        "profileImgUrl": profileImgUrl,
        "deviceId": deviceId,
        "accountStatus": accountStatus,
        "unreadNotifications": unreadNotifications,
        "unreadMessages": unreadMessages,
        "accessToken": accessToken,
        "refreshToken": refreshToken,
        "residentialAddress": residentialAddress,
        "preferences": preferences,
        "externalCommunication": externalCommunication,
        "inAppCommunication": inAppCommunication,
        "securityPreferences": securityPreferences,
        "walletActivities": walletActivities,
        "securityAlerts": securityAlerts,
        "createdAt": createdAt?.toIso8601String(),
      };

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

class ExternalCommunication extends ExternalCommunicationEntity {
  const ExternalCommunication({
    required super.id,
    required super.pushNotifications,
    required super.sms,
    required super.emails,
    required super.createdAt,
    required super.updatedAt,
  });

  factory ExternalCommunication.fromJson(DataMap json) {
    return ExternalCommunication(
      id: json["id"],
      pushNotifications: json["pushNotifications"],
      sms: json["sms"],
      emails: json["emails"],
      createdAt: DateTime.tryParse(json["createdAt"] ?? ""),
      updatedAt: DateTime.tryParse(json["updatedAt"] ?? ""),
    );
  }

  DataMap toJson() => {
        "id": id,
        "pushNotifications": pushNotifications,
        "sms": sms,
        "emails": emails,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
      };

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

class InAppCommunication extends InAppCommunicationEntity {
  const InAppCommunication({
    required super.id,
    required super.messages,
    required super.popUps,
    required super.createdAt,
    required super.updatedAt,
  });

  factory InAppCommunication.fromJson(DataMap json) {
    return InAppCommunication(
      id: json["id"],
      messages: json["messages"],
      popUps: json["popUps"],
      createdAt: DateTime.tryParse(json["createdAt"] ?? ""),
      updatedAt: DateTime.tryParse(json["updatedAt"] ?? ""),
    );
  }

  DataMap toJson() => {
        "id": id,
        "messages": messages,
        "popUps": popUps,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
      };

  @override
  List<Object?> get props => [
        id,
        messages,
        popUps,
        createdAt,
        updatedAt,
      ];
}

class Preferences extends PreferencesEntity {
  const Preferences({
    required super.id,
    required super.language,
    required super.timeZone,
    required super.oddsDisplay,
    required super.maximumInactivePeriod,
    required super.createdAt,
    required super.updatedAt,
  });

  factory Preferences.fromJson(DataMap json) {
    return Preferences(
      id: json["id"],
      language: json["language"],
      timeZone: json["timeZone"],
      oddsDisplay: json["oddsDisplay"],
      maximumInactivePeriod: json["maximumInactivePeriod"],
      createdAt: DateTime.tryParse(json["createdAt"] ?? ""),
      updatedAt: DateTime.tryParse(json["updatedAt"] ?? ""),
    );
  }

  DataMap toJson() => {
        "id": id,
        "language": language,
        "timeZone": timeZone,
        "oddsDisplay": oddsDisplay,
        "maximumInactivePeriod": maximumInactivePeriod,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
      };

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

class ResidentialAddress extends ResidentialAddressEntity {
  const ResidentialAddress({
    required super.id,
    required super.address,
    required super.city,
    required super.state,
    required super.country,
    required super.postCode,
    required super.createdAt,
    required super.updatedAt,
  });

  factory ResidentialAddress.fromJson(DataMap json) {
    return ResidentialAddress(
      id: json["id"],
      address: json["address"],
      city: json["city"],
      state: json["state"],
      country: json["country"],
      postCode: json["postCode"],
      createdAt: DateTime.tryParse(json["createdAt"] ?? ""),
      updatedAt: DateTime.tryParse(json["updatedAt"] ?? ""),
    );
  }

  DataMap toJson() => {
        "id": id,
        "address": address,
        "city": city,
        "state": state,
        "country": country,
        "postCode": postCode,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
      };

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

class SecurityPreferences extends SecurityPreferencesEntity {
  const SecurityPreferences({
    required super.id,
    required super.twoStepVerification,
    required super.biometric,
    required super.screenShots,
    required super.disableAccount,
    required super.createdAt,
    required super.updatedAt,
  });

  factory SecurityPreferences.fromJson(DataMap json) {
    return SecurityPreferences(
      id: json["id"],
      twoStepVerification: json["twoStepVerification"],
      biometric: json["biometric"],
      screenShots: json["screenShots"],
      disableAccount: json["disableAccount"],
      createdAt: DateTime.tryParse(json["createdAt"] ?? ""),
      updatedAt: DateTime.tryParse(json["updatedAt"] ?? ""),
    );
  }

  DataMap toJson() => {
        "id": id,
        "twoStepVerification": twoStepVerification,
        "biometric": biometric,
        "screenShots": screenShots,
        "disableAccount": disableAccount,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
      };

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
