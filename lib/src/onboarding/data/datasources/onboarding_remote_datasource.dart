import 'package:sportboo_mobile_client/core/errors/exception.dart';
import 'package:sportboo_mobile_client/core/services/http_util.dart';
import 'package:sportboo_mobile_client/src/onboarding/data/model/competition_model.dart';
import 'package:sportboo_mobile_client/src/onboarding/data/model/team_model.dart';

abstract class OnboardingRemoteDatasource {
  Future<List<CompetitionModel>> getAllCompetitions();

  Future<void> addFavorite({
    required int favoriteId,
    required String name,
    required String favoriteType,
    required String payload,
  });

  Future<List<CompetitionModel>> searchCompetition({required String term});

  Future<List<TeamModel>> getAllTeams();

  Future<List<TeamModel>> searchTeam({required String term});

  Future<void> removeFavorite({required int apiId, required String favoriteType});
}

class OnboardingRemoteDatasourceImpl extends OnboardingRemoteDatasource {
  final HttpUtil _httpUtil;

  OnboardingRemoteDatasourceImpl(this._httpUtil);

  @override
  Future<List<CompetitionModel>> getAllCompetitions() async {
    try {
      final response = await _httpUtil.get('/events/competitions');
      List data = response['data'];

      List<CompetitionModel> competitions = data.map((competiton) => CompetitionModel.fromJson(competiton)).toList();

      return competitions;
    } on ErrorEntity catch (e) {
      throw ServerException(message: e.message, statusCode: e.code);
    }
  }

  @override
  Future<void> addFavorite({
    required int favoriteId,
    required String name,
    required String favoriteType,
    required String payload,
  }) async {
    try {
      await _httpUtil.post('/favorites', data: {
        'favoriteId': favoriteId,
        'name': name,
        'favoriteType': favoriteType,
        'payload': payload,
      });
    } on ErrorEntity catch (e) {
      throw ServerException(message: e.message, statusCode: e.code);
    }
  }
  
  @override
  Future<List<CompetitionModel>> searchCompetition({required String term}) async {
    try {
      final response = await _httpUtil.get('/events/competitions/search/$term');

      List data = response['data'];

      List<CompetitionModel> searchResults = data.map((result) => CompetitionModel.fromJson(result)).toList();

      return searchResults;
    } on ErrorEntity catch (e) {
      throw ServerException(message: e.message, statusCode: e.code);
    }
  } 
  
  @override
  Future<List<TeamModel>> getAllTeams() async {
    try {
      final response = await _httpUtil.get('/events/teams');
      List data = response['data'];

      List<TeamModel> teams = data.map((team) => TeamModel.fromJson(team)).toList();

      return teams;
    } on ErrorEntity catch (e) {
      throw ServerException(message: e.message, statusCode: e.code);
    }
  }
  
  @override
  Future<List<TeamModel>> searchTeam({required String term}) async {
    try {
      final response = await _httpUtil.get('/events/teams/search/$term');

      List data = response['data'];

      List<TeamModel> teams = data.map((team) => TeamModel.fromJson(team)).toList();

      return teams;
    } on ErrorEntity catch (e) {
      throw ServerException(message: e.message, statusCode: e.code);
    }
  }
  
  @override
  Future<void> removeFavorite({required int apiId, required String favoriteType}) async {
    try {
      await _httpUtil.delete('/favorites', data: {
        'favoriteId': apiId,
        'favoriteType': favoriteType,
      });
      
    } on ErrorEntity catch (e) {
      throw ServerException(message: e.message, statusCode: e.code);
    }
  }
}
