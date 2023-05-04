import 'package:flutter/material.dart';
import 'package:jobik/homeScreens/mainScreen.dart';
import 'homeScreens/mainScreen.dart';
import 'startScreens/aboutScreen.dart';
import 'startScreens/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

const Map<String, Widget> paths = {
  '/': MainScreen(),
  '/splash': SplashScreen(),
  '/welcome': AboutScreen(),
  /*'/reg': RegScreen(),
  '/auth': AuthScreen()*/
};

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
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
