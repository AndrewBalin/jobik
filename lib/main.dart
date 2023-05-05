import 'package:flutter/material.dart';
import 'package:jobik/authScreens/authEmailPassword.dart';
import 'package:jobik/authScreens/authScreen.dart';
import 'package:jobik/homeScreens/mainScreen.dart';
import 'authScreens/aboutMe.dart';
import 'homeScreens/mainScreen.dart';
import 'startScreens/aboutScreen.dart';
import 'startScreens/splashScreen.dart';
import 'authScreens/authScreen.dart';
import 'authScreens/authEmail.dart';
import 'homeScreens/tests/testsScreen.dart';
import 'homeScreens/tests/testDescription.dart';

void main() {
  runApp(const MyApp());
}

const Map<String, Widget> paths = {
  '/': MainScreen(),
  '/splash': SplashScreen(),
  '/welcome': AboutScreen(),
  /*'/reg': RegScreen(),*/
  '/auth': AuthScreen(),
  '/email': AuthEmail(),
  '/tests': TestsScreen(),
  '/test': TestDescription()
  '/about_me': AboutMe(),
  '/authP': AuthEmailPassword()
};

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/test',
      onGenerateRoute: (routeSettings) {

        var path = routeSettings.name?.split('/');
        var keys = paths.keys;

        if (keys.contains(routeSettings.name)) {
          Widget widget = paths[routeSettings.name]!;
          return MaterialPageRoute(builder: (context) => widget);
        }
        /*if (routeSettings.name == '/') {
          return MaterialPageRoute(builder: (context) => MainScreen());
        } else if (routeSettings.name == 'splash') {
          return MaterialPageRoute(builder: (context) => SplashScreen());
        } else if (routeSettings.name == '')*/


      },
    );
  }
}
