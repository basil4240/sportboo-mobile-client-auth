import 'package:sportboo_mobile_client/core/unils/typedefs.dart';
import 'package:sportboo_mobile_client/core/usecases/usecases.dart';
import 'package:sportboo_mobile_client/src/onboarding/domain/entities/team_entity.dart';
import 'package:sportboo_mobile_client/src/onboarding/domain/repos/onboarding_repo.dart';

class GetAllTeamsUsecase extends UsecaseWithoutParams<List<TeamEntity>> {
  final OnboardingRepo _onboardingRepo;

  GetAllTeamsUsecase(this._onboardingRepo);

  @override
  ResultFuture<List<TeamEntity>> call() async => await _onboardingRepo.getAllTeams();
  
}