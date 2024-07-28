import '../../core/models/market_data.dart';
import '../../components/base_viewmodel.dart';

class FilterBottomSheetModel extends BaseViewModel {

  final List<Filter> _filters = FilterType.values
      .map((e) => Filter(filterType: e, selectState: false))
      .toList();

  List<Filter> get filters => _filters;

  final List<MarketType> _marketTypeFilters = [];
  List<MarketType> get marketTypeFilters => _marketTypeFilters;

  void onReset() {
    for (var element in _filters) {
      element.selectState = false;
    }
    _marketTypeFilters.clear();
    notifyListeners();
  }

  void onFilterTap(FilterType filterType) {
    for (var element in _filters) {
      if(element.filterType == filterType) {
        element.selectState = !element.selectState;
      }
    }
    notifyListeners();
  }

  void onMarketTypesFilter(MarketType marketType) {
    if(_marketTypeFilters.contains(marketType)){
      _marketTypeFilters.remove(marketType);
    } else{
      _marketTypeFilters.add(marketType);
    }
    notifyListeners();
  }


}

class Filter {
  final FilterType filterType;
  bool selectState;

  Filter({required this.filterType, required this.selectState});
}

enum FilterType {
  mostRecent,
  marketTypes,
  placedBets,
  amount,
  limit;
}
