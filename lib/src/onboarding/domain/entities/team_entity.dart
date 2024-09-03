import 'package:equatable/equatable.dart';

class TeamEntity extends Equatable {
  const TeamEntity({
    required this.id,
    required this.apiId,
    required this.name,
    required this.country,
    required this.countryImgUrl,
    required this.teamImgUrl,
  });

  final int? id;
  final int? apiId;
  final String? name;
  final String? country;
  final String? countryImgUrl;
  final String? teamImgUrl;

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
