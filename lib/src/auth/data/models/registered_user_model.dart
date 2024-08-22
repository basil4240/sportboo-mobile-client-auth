import 'package:sportboo_mobile_client/src/auth/domain/entities/registered_user_entity.dart';

class RegisteredUser extends RegisteredUserEntity {
  const RegisteredUser({
    super.fullname,
    super.userId,
    super.email,
    super.sportbooId,
  });

  factory RegisteredUser.fromJson(Map<String, dynamic> json) {
    return RegisteredUser(
      fullname: json["fullname"],
      userId: json["userId"],
      email: json["email"],
      sportbooId: json["sportbooId"],
    );
  }

  Map<String, dynamic> toJson() => {
        "fullname": fullname,
        "userId": userId,
        "email": email,
        "sportbooId": sportbooId,
      };

  @override
  String toString() {
    return "$fullname, $userId, $email, $sportbooId, ";
  }
}
