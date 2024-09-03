import 'package:sportboo_mobile_client/core/unils/typedefs.dart';
import 'package:sportboo_mobile_client/src/onboarding/domain/entities/competition_entity.dart';
import 'package:sportboo_mobile_client/src/onboarding/domain/entities/team_entity.dart';

abstract class OnboardingRepo {
  ResultFuture<List<CompetitionEntity>> getAllCompetitions();

  ResultFuture<void> favoriteCompetiton({
    required int favoriteId,
    required String name,
    required String favoriteType,
    required String payload,
  });

  ResultFuture<List<CompetitionEntity>> searchCompetition({required String term});

  ResultFuture<List<TeamEntity>> getAllTeams();

  ResultFuture<void> favoriteTeam({
    required int favoriteId,
    required String name,
    required String favoriteType,
    required String payload,
  });

  ResultFuture<List<TeamEntity>> searchTeam({required String term});

  ResultFuture<void> removeFavorite({required int apiId, required String favoriteType});
  
}
