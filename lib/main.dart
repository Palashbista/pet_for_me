

import 'package:flutter/material.dart';
import 'package:pet_for_me/pages/about.dart';
import 'package:pet_for_me/pages/favorites.dart';
import 'package:pet_for_me/pages/home_page.dart';
import 'package:pet_for_me/pages/breed_info.dart';
import 'package:pet_for_me/pages/settings.dart';
import 'package:pet_for_me/pages/trivia_quiz.dart';
import 'package:pet_for_me/pages/vets_available.dart';
import 'package:pet_for_me/pages/feedback.dart';
import 'package:pet_for_me/components/themes.dart';
import 'package:pet_for_me/components/custom_theme.dart';
import 'package:pet_for_me/fetchHttpData.dart' as http;

import 'fetchHttpData.dart';



//ThemeData customTheme = ThemeData.dark().copyWith(
//  primaryColor: Color(0xFF0A0E21),
//  scaffoldBackgroundColor: Color(0xFF0A0E21),
//  textTheme: TextTheme(
//    headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
//    title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
//    body1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
//  )
//);
//Color switchColor = Colors.pink;
//Color switchColor = Settings().getThemeColor();

void main() {
<<<<<<< HEAD
  runApp(
    CustomTheme(
      initialThemeKey: MyThemeKeys.LIGHT,
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
//    print("tst");
//    http.test();
    return MaterialApp(
      title: 'Final Year Project',
      navigatorKey: key,
      theme: CustomTheme.of(context),
//      theme: ThemeData.dark().copyWith(
//        primaryColor: Color(0xFF0A0E21),
//        scaffoldBackgroundColor: Color(0xFF0A0E21),
//        textTheme: TextTheme(
//          headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
//          title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
//          body1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
//        ),
//      ),
      home:
      HomePage(),
=======
  runApp(PetForMe());
}

class PetForMe extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Final Year Project',
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF0A0E21),
          scaffoldBackgroundColor: Colors.pink,
          textTheme: TextTheme(
            headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
            title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
            body1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
          )),
      home: HomePage(),
>>>>>>> 97a3667d76ddee1201b94c7bcf06f722eacbeff7
      routes: <String, WidgetBuilder>{
        "/HomePage": (BuildContext context) => HomePage(),
        "/BreedInfo": (BuildContext context) => GridViewPage(),
        "/Favorites": (BuildContext context) => Favorites(),
        "/VetsAvailable": (BuildContext context) => VetsAvailable(),
        "/TriviaQuiz": (BuildContext context) => TriviaQuiz(),
        "/About": (BuildContext context) => About(),
        "/SendFeedback": (BuildContext context) => FeedbackPage(),
        "/Settings": (BuildContext context) => Settings(),
      },
    );
  }
}




