import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response.freezed.dart';
part 'login_response.g.dart';

@freezed
class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
    required String message,
    required UserData data,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@freezed
class UserData with _$UserData {
  const factory UserData({
    required int id,
    required String fullName,
    required String email,
    required String userName,
    String? pin,
    required String androidShareLink,
    required String iosShareLink,
    required String sportbooId,
    String? phone,
    required String profileImgUrl,
    String? deviceId,
    required String accountStatus,
    required int unreadNotifications,
    required int unreadMessages,
    required String accessToken,
    required String refreshToken,
    required ResidentialAddress residentialAddress,
    required Preferences preferences,
    required ExternalCommunication externalCommunication,
    required InAppCommunication inAppCommunication,
    required SecurityPreferences securityPreferences,
    required WalletActivities walletActivities,
    required SecurityAlerts securityAlerts,
    required DateTime createdAt,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}

@freezed
class ResidentialAddress with _$ResidentialAddress {
  const factory ResidentialAddress({
    required int id,
    String? address,
    String? city,
    String? state,
    String? country,
    String? postCode,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _ResidentialAddress;

  factory ResidentialAddress.fromJson(Map<String, dynamic> json) =>
      _$ResidentialAddressFromJson(json);
}

@freezed
class Preferences with _$Preferences {
  const factory Preferences({
    required int id,
    String? language,
    String? timeZone,
    String? oddsDisplay,
    String? maximumInactivePeriod,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Preferences;

  factory Preferences.fromJson(Map<String, dynamic> json) =>
      _$PreferencesFromJson(json);
}

@freezed
class ExternalCommunication with _$ExternalCommunication {
  const factory ExternalCommunication({
    required int id,
    bool? pushNotifications,
    bool? sms,
    bool? emails,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _ExternalCommunication;

  factory ExternalCommunication.fromJson(Map<String, dynamic> json) =>
      _$ExternalCommunicationFromJson(json);
}

@freezed
class InAppCommunication with _$InAppCommunication {
  const factory InAppCommunication({
    required int id,
    bool? messages,
    bool? popUps,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _InAppCommunication;

  factory InAppCommunication.fromJson(Map<String, dynamic> json) =>
      _$InAppCommunicationFromJson(json);
}

@freezed
class SecurityPreferences with _$SecurityPreferences {
  const factory SecurityPreferences({
    required int id,
    bool? twoStepVerification,
    bool? biometric,
    bool? screenShots,
    bool? disableAccount,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _SecurityPreferences;

  factory SecurityPreferences.fromJson(Map<String, dynamic> json) =>
      _$SecurityPreferencesFromJson(json);
}

@freezed
class WalletActivities with _$WalletActivities {
  const factory WalletActivities({
    required int id,
    bool? pushNotifications,
    bool? sms,
    bool? emails,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _WalletActivities;

  factory WalletActivities.fromJson(Map<String, dynamic> json) =>
      _$WalletActivitiesFromJson(json);
}

@freezed
class SecurityAlerts with _$SecurityAlerts {
  const factory SecurityAlerts({
    required int id,
    bool? pushNotifications,
    bool? sms,
    bool? emails,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _SecurityAlerts;

  factory SecurityAlerts.fromJson(Map<String, dynamic> json) =>
      _$SecurityAlertsFromJson(json);
}
