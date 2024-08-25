import 'package:get/get.dart';
import 'package:meteo/search_ville.dart';

class AppRoute {
  // static const HOME = '/';
  // static const DETAIL = '/detail';
  static const METEO = '/searchVille';

  static final route = [
    // GetPage(name: HOME, page: () => BookScreen()),
    // GetPage(name: DETAIL, page: () => DetailBook()),
    GetPage(name: METEO, page: () => SearchVille()),
  ];
}
