import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sportboo_mobile_client/src/onboarding/domain/entities/competition_entity.dart';
import 'package:sportboo_mobile_client/src/onboarding/domain/entities/team_entity.dart';
import 'package:sportboo_mobile_client/src/onboarding/domain/usecases/favorite_competition.dart';
import 'package:sportboo_mobile_client/src/onboarding/domain/usecases/favorite_team_usecase.dart';
import 'package:sportboo_mobile_client/src/onboarding/domain/usecases/get_all_competitions_usecase.dart';
import 'package:sportboo_mobile_client/src/onboarding/domain/usecases/get_all_teams_usecase.dart';
import 'package:sportboo_mobile_client/src/onboarding/domain/usecases/remove_favorite.dart';
import 'package:sportboo_mobile_client/src/onboarding/domain/usecases/search_competition_usecase.dart';
import 'package:sportboo_mobile_client/src/onboarding/domain/usecases/search_team_usecase.dart';

part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit(
    this.getAllCompetitionsUsecase,
    this.favoriteCompetitionUsecase,
    this.searchCompetitionUsecase,
    this.getAllTeamsUsecase,
    this.favoriteTeamUsecase,
    this.searchTeamUsecase,
    this.removeFavoriteUsecase,
  ) : super(OnboardingInitial());

  final GetAllCompetitionsUsecase getAllCompetitionsUsecase;
  final FavoriteCompetitionUsecase favoriteCompetitionUsecase;
  final SearchCompetitionUsecase searchCompetitionUsecase;
  final GetAllTeamsUsecase getAllTeamsUsecase;
  final FavoriteTeamUsecase favoriteTeamUsecase;
  final SearchTeamUsecase searchTeamUsecase;
  final RemoveFavoriteUsecase removeFavoriteUsecase;

  Future<void> getAllCompetitions() async {
    emit(OnboardingLoading());

    final result = await getAllCompetitionsUsecase.call();

    result.fold(
      (failure) => emit(OnboardingError(failure.message, failure.statusCode)),
      (competitions) => emit(AllCompetitionsLoaded(competitions)),
    );
  }

  Future<void> favoriteCompetiton({
    required int favoriteId,
    required String name,
    required String favoriteType,
    required String payload,
  }) async {
    // emit(OnboardingLoading());

    final result = await favoriteCompetitionUsecase.call(FavoriteCompetitionParams(
      favoriteId: favoriteId,
      name: name,
      favoriteType: favoriteType,
      payload: payload,
    ));

    result.fold(
      (failure) => emit(OnboardingError(failure.message, failure.statusCode)),
      (_) => emit(CompetitionFavorited()),
    );
  }

  Future<void> searchCompetition({required String term}) async {
    emit(OnboardingLoading());

    final result = await searchCompetitionUsecase.call(SearchCompetitionParams(term: term));

    result.fold(
      (failure) => emit(OnboardingError(failure.message, failure.statusCode)), 
      (result) => emit(AllCompetitionsLoaded(result)),
    );
  }

  Future<void> getAllTeams() async {
    emit(OnboardingLoading());

    final result = await getAllTeamsUsecase.call();

    result.fold(
      (failure) => emit(OnboardingError(failure.message, failure.statusCode)), 
      (teams) => emit(AllTeamsLoaded(teams)),
    );
  }

  Future<void> favoriteTeam({
    required int favoriteId,
    required String name,
    required String favoriteType,
    required String payload,
  }) async {
    // emit(OnboardingLoading());

    final result = await favoriteTeamUsecase.call(FavoriteTeamParams(favoriteId: favoriteId, name: name, favoriteType: favoriteType, payload: payload));

    result.fold(
      (failure) => emit(OnboardingError(failure.message, failure.statusCode)), 
      (_) => emit(TeamFavorited()),
    );
  }

  Future<void> searchTeam({required String term}) async {
    emit(OnboardingLoading());

    final result = await searchTeamUsecase.call((SearchTeamParams(term: term)));

    result.fold(
      (failure) => emit(OnboardingError(failure.message, failure.statusCode)), 
      (result) => emit(AllTeamsLoaded(result)),
    );
  }

  Future<void> removeFavorite({required int apiId, required String favoriteType}) async {
    final result = await removeFavoriteUsecase.call(RemoveFavoriteParams(apiId: apiId, favoriteType: favoriteType));

    result.fold(
      (failure) => emit(OnboardingError(failure.message, failure.statusCode)), 
      (_) => emit(FavoriteRemoved()),
    );
  }

}
