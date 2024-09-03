import 'package:dartz/dartz.dart';
import 'package:sportboo_mobile_client/core/errors/exception.dart';
import 'package:sportboo_mobile_client/core/errors/failures.dart';
import 'package:sportboo_mobile_client/core/unils/typedefs.dart';
import 'package:sportboo_mobile_client/src/onboarding/data/datasources/onboarding_remote_datasource.dart';
import 'package:sportboo_mobile_client/src/onboarding/domain/entities/competition_entity.dart';
import 'package:sportboo_mobile_client/src/onboarding/domain/entities/team_entity.dart';
import 'package:sportboo_mobile_client/src/onboarding/domain/repos/onboarding_repo.dart';

class OnboardingRepoImpl extends OnboardingRepo {
  final OnboardingRemoteDatasource _onboardingRemoteDatasource;

  OnboardingRepoImpl(this._onboardingRemoteDatasource);
  
  @override
  ResultFuture<List<CompetitionEntity>> getAllCompetitions() async {
    try {
      final result = await _onboardingRemoteDatasource.getAllCompetitions();
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message, statusCode: e.statusCode));
    }
  }
  
  @override
  ResultFuture<void> favoriteCompetiton({
    required int favoriteId, 
    required String name, 
    required String favoriteType, 
    required String payload,
  }) async {
    try {
      await _onboardingRemoteDatasource.addFavorite(favoriteId: favoriteId, name: name, favoriteType: favoriteType, payload: payload);

      return const Right(null);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message, statusCode: e.statusCode));
    }
  }
  
  @override
  ResultFuture<List<CompetitionEntity>> searchCompetition({required String term}) async {
    try {
      final result = await _onboardingRemoteDatasource.searchCompetition(term: term);

      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message, statusCode: e.statusCode));
    }
  }

  @override
  ResultFuture<List<TeamEntity>> getAllTeams() async {
    try {
      final result = await _onboardingRemoteDatasource.getAllTeams();

      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message, statusCode: e.statusCode));
    }  
  }
  
  @override
  ResultFuture<void> favoriteTeam({required int favoriteId, required String name, required String favoriteType, required String payload}) async {
    try {
      await _onboardingRemoteDatasource.addFavorite(favoriteId: favoriteId, name: name, favoriteType: favoriteType, payload: payload);

      return const Right(null);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message, statusCode: e.statusCode));
    }
  }
  
  @override
  ResultFuture<List<TeamEntity>> searchTeam({required String term}) async {
    try {
      final result = await _onboardingRemoteDatasource.searchTeam(term: term);

      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message, statusCode: e.statusCode));
    }
  }
  
  @override
  ResultFuture<void> removeFavorite({required int apiId, required String favoriteType}) async {
    try {
      await _onboardingRemoteDatasource.removeFavorite(apiId: apiId, favoriteType: favoriteType);

      return const Right(null);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message, statusCode: e.statusCode));
    }
  }
  
}