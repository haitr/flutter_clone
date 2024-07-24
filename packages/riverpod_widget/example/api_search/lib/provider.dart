import 'package:riverpod_widget/wrapper.dart';

import 'pub_repository.dart';

final fetchPackagesProvider = FutureProvider.autoDispose
    .family<List<SearchPackage>, (int page, String keyword)>((ref, args) async {
  final repository = PubRepository();
  final packages = await repository.searchPackages(page: args.$1, search: args.$2);
  return packages;
});

final fetchPackageDetail = FutureProvider.autoDispose.family<Package, String>((ref, arg) async {
  final repository = PubRepository();
  final detail = await repository.getPackageDetails(packageName: arg);
  return detail;
});
