import 'package:rxdart/rxdart.dart';
import 'package:rxflutterify_binding/wrapper.dart';

import 'pub_repository.dart';

class SearchPageViewModel {
  final input = (text: ''.react,);
  final output = (packages: <SearchPackage>[].react,);

  final _repository = PubRepository();
  final _currentPage = 0;
  final _packageInfo = <String, ReplaySubject<Package>>{};

  SearchPageViewModel() {
    // rapidly request for pub info on text field event
    input.text.debounceTime(const Duration(milliseconds: 300)).listen((event) => event.length > 3
        ? _repository
            .searchPackages(page: _currentPage, search: event)
            .then((value) => output.packages.value = value)
        : output.packages.value = []);
  }

  void clearInputText() => input.text.value = "";

  ReplaySubject<Package> getPackage(String name) {
    if (!_packageInfo.containsKey(name)) {
      _packageInfo[name] = ReplaySubject();
      _repository.getPackageDetails(packageName: name).then((value) {
        _packageInfo[name]!.add(value);
      });
    }
    return _packageInfo[name]!;
  }
}
