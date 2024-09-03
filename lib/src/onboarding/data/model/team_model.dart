import 'package:sportboo_mobile_client/src/onboarding/domain/entities/team_entity.dart';

class TeamModel extends TeamEntity {
  const TeamModel({
    required super.id,
    required super.apiId,
    required super.name,
    required super.country,
    required super.countryImgUrl,
    required super.teamImgUrl,
  });

  factory TeamModel.fromJson(Map<String, dynamic> json) {
    return TeamModel(
      id: json["id"],
      apiId: json["apiId"],
      name: json["name"],
      country: json["country"],
      countryImgUrl: json["countryImgUrl"],
      teamImgUrl: json["teamImgUrl"],
    );
  }

  Map<String, dynamic> toJson() => {
    "id": id,
    "apiId": apiId,
    "name": name,
    "country": country,
    "countryImgUrl": countryImgUrl,
     "teamImgUrl": teamImgUrl,
  };

  @override
  List<Object?> get props => [
    id,
    apiId,
    name,
    country,
    countryImgUrl,
    teamImgUrl,
  ];
}
