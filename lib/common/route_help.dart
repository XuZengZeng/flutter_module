import 'package:my_app/home/home_page.dart';
import 'package:my_app/home/kline_page.dart';

class RouteManager {
  RouteManager._internal();

  factory RouteManager() => _instance;

  static late final RouteManager _instance = RouteManager._internal();

  var routeMap = {
    "toMarketPages": const HomePageWidget(),
    "k_line": const KlinePage(),
  };
}
