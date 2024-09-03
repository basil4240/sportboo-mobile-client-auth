import 'package:equatable/equatable.dart';
import 'package:sportboo_mobile_client/core/unils/typedefs.dart';
import 'package:sportboo_mobile_client/core/usecases/usecases.dart';
import 'package:sportboo_mobile_client/src/onboarding/domain/entities/competition_entity.dart';
import 'package:sportboo_mobile_client/src/onboarding/domain/repos/onboarding_repo.dart';

class SearchCompetitionUsecase extends UsecaseWithParams<List<CompetitionEntity>, SearchCompetitionParams> {
  final OnboardingRepo _onboardingRepo;

  SearchCompetitionUsecase(this._onboardingRepo);
  
  @override
  ResultFuture<List<CompetitionEntity>> call(params) async => await _onboardingRepo.searchCompetition(term: params.term);
  
}

class SearchCompetitionParams extends Equatable {
  final String term;

  const SearchCompetitionParams({required this.term});

  
  @override
  List<Object?> get props => [term];
  
}