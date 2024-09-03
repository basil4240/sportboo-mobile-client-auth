import 'package:equatable/equatable.dart';
import 'package:sportboo_mobile_client/core/unils/typedefs.dart';
import 'package:sportboo_mobile_client/core/usecases/usecases.dart';
import 'package:sportboo_mobile_client/src/onboarding/domain/repos/onboarding_repo.dart';

class FavoriteTeamUsecase extends UsecaseWithParams<void, FavoriteTeamParams> {
  final OnboardingRepo _onboardingRepo;

  FavoriteTeamUsecase(this._onboardingRepo);

  @override
  ResultFuture call(params) async => await _onboardingRepo.favoriteTeam(
        favoriteId: params.favoriteId,
        name: params.name,
        favoriteType: params.favoriteType,
        payload: params.payload,
      );
}

class FavoriteTeamParams extends Equatable {
  final int favoriteId;
  final String name;
  final String favoriteType;
  final String payload;

  const FavoriteTeamParams({
    required this.favoriteId,
    required this.name,
    required this.favoriteType,
    required this.payload,
  });

  @override
  List<Object?> get props => [
        favoriteId,
        name,
        favoriteType,
        payload,
      ];
}
