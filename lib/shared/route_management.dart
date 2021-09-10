abstract class RouteApp {
  final String name;
  final RouteAppArguments? arguments;

  RouteApp({required this.name, this.arguments});
}

abstract class RouteAppArguments {}

class HomeAppRoute extends RouteApp {
  HomeAppRoute._private() : super(name: '/');

  static final HomeAppRoute _instance = HomeAppRoute._private();

  static HomeAppRoute get route => _instance;
}
