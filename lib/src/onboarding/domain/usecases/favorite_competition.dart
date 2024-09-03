import 'package:equatable/equatable.dart';
import 'package:sportboo_mobile_client/core/unils/typedefs.dart';
import 'package:sportboo_mobile_client/core/usecases/usecases.dart';
import 'package:sportboo_mobile_client/src/onboarding/domain/repos/onboarding_repo.dart';

class FavoriteCompetitionUsecase extends UsecaseWithParams<void, FavoriteCompetitionParams> {
  final OnboardingRepo _onboardingRepo;

  FavoriteCompetitionUsecase(this._onboardingRepo);

  @override
  ResultFuture call(params) async => await _onboardingRepo.favoriteCompetiton(favoriteId: params.favoriteId, name: params.name, favoriteType: params.favoriteType, payload: params.payload);
  
}

class FavoriteCompetitionParams extends Equatable {
  final int favoriteId;
  final String name;
  final String favoriteType;
  final String payload;

  const FavoriteCompetitionParams({
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