import 'package:sportboo_mobile_client/src/onboarding/domain/entities/competition_entity.dart';

class CompetitionModel extends CompetitionEntity {
  const CompetitionModel({
    required super.id,
    required super.apiId,
    required super.competition,
    required super.competitionRegion,
    required super.competitionImgUrl,
  });

  CompetitionModel copyWith({
    int? id,
    int? apiId,
    String? competition,
    String? competitionRegion,
    String? competitionImgUrl,
  }) {
    return CompetitionModel(
      id: id ?? this.id,
      apiId: apiId ?? this.id,
      competition: competition ?? this.competition,
      competitionRegion: competitionRegion ?? this.competitionRegion,
      competitionImgUrl: competitionImgUrl ?? this.competitionImgUrl,
    );
  }

  factory CompetitionModel.fromJson(Map<String, dynamic> json) {
    return CompetitionModel(
      id: json["id"],
      apiId: json["apiId"],
      competition: json["competition"],
      competitionRegion: json["competitionRegion"],
      competitionImgUrl: json["competitionImgUrl"],
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "competition": competition,
        "competitionRegion": competitionRegion,
        "competitionImgUrl": competitionImgUrl,
      };

  @override
  List<Object?> get props => [
        id,
        competition,
        competitionRegion,
        competitionImgUrl,
      ];
}
