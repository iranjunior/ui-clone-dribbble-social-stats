import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:social_stats/presenter/screens/screens.dart';
import 'package:social_stats/shared/route_management.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  runApp(EntryApp());
}

class EntryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xffA6FB19),
        highlightColor: Color(0xff679F11),
        backgroundColor: Color(0xff030303),
        cardColor: Color(0xff161616),
        iconTheme: IconThemeData(
          color: Colors.white,
          size: 24,
        ),
        textTheme: TextTheme(
            headline1: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w500,
              color: Color(0xffA6FB19),
            ),
            headline2: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
            bodyText1: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
            bodyText2: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
            subtitle1: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
            subtitle2: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0xff86984E),
            ),
            headline3: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            )),
      ),
      onGenerateRoute: (settings) {
        if (settings.name == HomeAppRoute.route.name) {
          return MaterialPageRoute(builder: (context) => HomePage());
        }
      },
      initialRoute: '/',
    );
  }
}
