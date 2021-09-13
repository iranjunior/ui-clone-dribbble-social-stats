import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:social_stats/domain/entity/social.dart';
import 'package:social_stats/presenter/screens/home/home_page.dart';
import 'package:social_stats/presenter/screens/screens.dart';

abstract class RouteApp {
  final String name;

  RouteApp({required this.name});
}

abstract class RouteAppArguments {}

class HomeAppRoute extends RouteApp {
  HomeAppRoute._private() : super(name: '/');

  static final HomeAppRoute _instance = HomeAppRoute._private();

  static HomeAppRoute get route => _instance;
  static get page => MaterialPageRoute(builder: (context) => HomePage());
}

class DetailAppArguments extends RouteAppArguments {
  final SocialMedia socialMedia;

  DetailAppArguments({
    required this.socialMedia,
  });
}

class DetailAppRoute extends RouteApp {
  late RouteAppArguments arguments;
  DetailAppRoute._private() : super(name: '/social/detail');

  static final DetailAppRoute _instance = DetailAppRoute._private();

  static DetailAppRoute get route => _instance;

  static get page => MaterialPageRoute(builder: (context) {
        final args = _instance.arguments as DetailAppArguments;
        return DetailPage(
          socialMedia: args.socialMedia,
        );
      });
}
