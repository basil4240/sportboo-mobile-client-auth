import 'package:equatable/equatable.dart';
import 'package:sportboo_mobile_client/core/unils/typedefs.dart';
import 'package:sportboo_mobile_client/core/usecases/usecases.dart';
import 'package:sportboo_mobile_client/src/onboarding/domain/repos/onboarding_repo.dart';

class RemoveFavoriteUsecase extends UsecaseWithParams<void, RemoveFavoriteParams> {

  final OnboardingRepo _onboardingRepo;

  RemoveFavoriteUsecase(this._onboardingRepo);

  @override
  ResultFuture call(params) async => await _onboardingRepo.removeFavorite(apiId: params.apiId, favoriteType: params.favoriteType);
  
}

class RemoveFavoriteParams extends Equatable {
  final int apiId;
  final String favoriteType;

  const RemoveFavoriteParams({required this.apiId, required this.favoriteType});

  @override
  List<Object?> get props => [apiId];
  
}