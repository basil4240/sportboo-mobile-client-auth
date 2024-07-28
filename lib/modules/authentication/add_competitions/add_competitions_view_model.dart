import '../../../components/base_viewmodel.dart';
import '../../../core/models/competition.dart';

class AddCompetitionsViewModel extends BaseViewModel {
  final List<Competition> _competitions = [];

  List<Competition> get competitions => _competitions;

  final List<Competition> _loadedCompetitions = [];

  final Set<Map> _selectedLeagues = {};

  Set<Map> get selectedLeagues => _selectedLeagues;

  String? _errorMessage;

  String? get errorMessage => _errorMessage;

  // List<Filter> _filters = CTFilterType.values
  //     .map((e) => Filter(filterType: e, selectState: false))
  //     .toList();
  //
  // List<Filter> get filters => _filters;

  void init() async {
    // set error message to null
    _errorMessage = null;
    setBusy(true);

    // show the loading bar
    // showSportbooLoader();

    // get all the leagues


    // closeSportbooLoader();
  }

  void onSearch(String term) async {

  }

  void onPopular() {}

  void onClear() {

  }

  void onFavourite(
      bool isFavourite, int competitionId, String name, String ingUrl) {
    if (isFavourite) {
      _selectedLeagues.add({
        'competitionId': competitionId,
        'name': name,
        'ingUrl': ingUrl,
      });
    } else {
      _selectedLeagues
          .removeWhere((element) => element['competitionId'] == competitionId);
      ;
    }

  }

  void onReceiveFilter(res) {
    // _filters = res;

    notifyListeners();
  }

}
