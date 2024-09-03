import 'package:equatable/equatable.dart';
import 'package:sportboo_mobile_client/core/unils/typedefs.dart';
import 'package:sportboo_mobile_client/core/usecases/usecases.dart';
import 'package:sportboo_mobile_client/src/onboarding/domain/entities/team_entity.dart';
import 'package:sportboo_mobile_client/src/onboarding/domain/repos/onboarding_repo.dart';

class SearchTeamUsecase extends UsecaseWithParams<List<TeamEntity>, SearchTeamParams> {
  final OnboardingRepo _onboardingRepo;

  SearchTeamUsecase(this._onboardingRepo);

  @override
  ResultFuture<List<TeamEntity>> call(params) async => await _onboardingRepo.searchTeam(term: params.term);
  
}

class SearchTeamParams extends Equatable {
  final String term;

  const SearchTeamParams({required this.term});
  
  @override
  List<Object?> get props => throw UnimplementedError();
  
}