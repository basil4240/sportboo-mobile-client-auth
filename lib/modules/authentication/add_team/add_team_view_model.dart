import '../../../components/base_viewmodel.dart';
import '../../../core/models/team.dart';
import '../../../shared/widgets/competition_team_filter_bottom_sheet.dart';
import '../../../unils/utils.dart';

class AddTeamViewModel extends BaseViewModel {
  final List<Team> _teams = [];

  List<Team> get teams => _teams;

  final List<Team> _loadedTeams = [];

  final Set<Map> leagues;

  String? _errorMessage;

  String? get errorMessage => _errorMessage;

  final Set<Map> _selectedTeams = {};

  Set<Map> get selectedTeams => _selectedTeams;

  List<Filter> _filters = CTFilterType.values
      .map((e) => Filter(filterType: e, selectState: false))
      .toList();

  List<Filter> get filters => _filters;

  AddTeamViewModel(
    this.leagues,
  );

  void init() async {
    // set error message to null
    _errorMessage = null;
    setBusy(true);

    // show the loading bar
    showSportbooLoader();

    // get all the leagues
    // var teamsResponse = await NetworkServices.teams;
    //
    // if (!teamsResponse.status) {
    //   // request failed display error and loading bar
    //   _errorMessage = teamsResponse.message;
    //   setBusy(false);
    //   closeSportbooLoader();
    //   showSportbooSnackBar(teamsResponse.message, (id) => (id) {});
    //   return;
    // }

    // _loadedTeams.clear();
    // _teams.clear();
    // _loadedTeams.addAll(teamsResponse.data!);
    // _teams.addAll(teamsResponse.data!);
    // setBusy(false);
    closeSportbooLoader();
  }

  void onClear() {
    _errorMessage = null;
    setBusy(true);
    showSportbooLoader();
    _teams.clear();
    _teams.addAll(_loadedTeams);
    setBusy(false);
    closeSportbooLoader();
  }

  void onSearch(String term) async {
    _errorMessage = null;
    setBusy(true);

    // show the loading bar
    showSportbooLoader();
    // get all the leagues
    // var teamsResponse = await NetworkServices.getSearchTeams(term);

    // if (!teamsResponse.status) {
    //   // request failed display error and loading bar
    //   _errorMessage = teamsResponse.message;
    //   setBusy(false);
    //   closeSportbooLoader();
    //   showSportbooSnackBar(teamsResponse.message, (id) => (id) {});
    //   return;
    // }
    //
    // _loadedTeams.clear();
    // _teams.clear();
    // _loadedTeams.addAll(teamsResponse.data!);
    // _teams.addAll(teamsResponse.data!);
    // setBusy(false);
    closeSportbooLoader();
  }

  void onFavourite(bool isFavourite, int teamId, String name, String imageUrl) {
    if (isFavourite) {
      _selectedTeams
          .add({'teamId': teamId, 'name': name, 'imageUrl': imageUrl});
    } else {
      _selectedTeams.removeWhere((element) => element['teamId'] == teamId);
    }
  }

  final List<Object> _busyObjects = [];

  void setBusyForObject(Object object, bool isBusy) {
    if (isBusy) {
      _busyObjects.add(object);
    } else {
      _busyObjects.remove(object);
    }
    notifyListeners();
  }

  bool busyForObject(Object object) {
    return _busyObjects.contains(object);
  }

  Future<bool> onDone() async {
    // save all favorites to db
    showSportbooLoader();

    // await NetworkServices.addToFavorite(
    //     'competitions', GetStorage().read('USER_ID'), leagues.toList());
    //
    // await NetworkServices.addToFavorite(
    //     'competitions', GetStorage().read('USER_ID'), _selectedTeams.toList());

    closeSportbooLoader();

    return true;
  }

  void onReceiveFilter(res) {
    _filters = res;
    notifyListeners();
  }

}
