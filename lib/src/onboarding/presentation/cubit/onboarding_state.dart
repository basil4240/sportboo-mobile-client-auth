part of 'onboarding_cubit.dart';

sealed class OnboardingState extends Equatable {
  const OnboardingState();

  @override
  List<Object> get props => [];
}

final class OnboardingInitial extends OnboardingState {}

final class OnboardingLoading extends OnboardingState {}

final class AllCompetitionsLoaded extends OnboardingState {
  final List<CompetitionEntity> competitions;

  const AllCompetitionsLoaded(this.competitions);
  

  @override
  List<Object> get props => [competitions];
}

final class CompetitionFavorited extends OnboardingState {}

final class AllTeamsLoaded extends OnboardingState {
  final List<TeamEntity> teams;

  const AllTeamsLoaded(this.teams);

  @override
  List<Object> get props => [teams];
}

final class TeamFavorited extends OnboardingState {}

final class FavoriteRemoved extends OnboardingState {}

final class OnboardingError extends OnboardingState {
  final String message;
  final int statusCode;

 const OnboardingError(this.message, this.statusCode);

  @override
  List<Object> get props => [message, statusCode];
}
