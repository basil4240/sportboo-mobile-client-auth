import 'package:sportboo_mobile_client/core/unils/typedefs.dart';
import 'package:sportboo_mobile_client/core/usecases/usecases.dart';
import 'package:sportboo_mobile_client/src/onboarding/domain/entities/competition_entity.dart';
import 'package:sportboo_mobile_client/src/onboarding/domain/repos/onboarding_repo.dart';

class GetAllCompetitionsUsecase extends UsecaseWithoutParams<List<CompetitionEntity>> {
  final OnboardingRepo _onboardingRepo;

  GetAllCompetitionsUsecase(this._onboardingRepo);

  @override
  ResultFuture<List<CompetitionEntity>> call() async => await _onboardingRepo.getAllCompetitions();
  
}