import 'package:equatable/equatable.dart';

class CompetitionEntity extends Equatable {
  const CompetitionEntity({
    required this.id,
    required this.apiId,
    required this.competition,
    required this.competitionRegion,
    required this.competitionImgUrl,
  });

  final int? id;
  final int? apiId;
  final String? competition;
  final String? competitionRegion;
  final String? competitionImgUrl;

  @override
  List<Object?> get props => [
    id,
    competition,
    competitionRegion,
    competitionImgUrl,
  ];
}
