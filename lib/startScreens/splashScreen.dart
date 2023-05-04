import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
            () { Navigator.pushNamedAndRemoveUntil(context, '/welcome', (Route<dynamic> route) => false); }
    );
  }

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        color: const Color.fromARGB(255, 207, 149, 255),
        child: Center(
          child: Column(
            children: <Widget> [
              Padding(
                  padding: EdgeInsets.fromLTRB(0, size.height * 0.25, 0, 0),
                  child: Image(image: const AssetImage('logo.png'), width: size.width * 0.65, alignment: Alignment.center,)
              ),
              const Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Text('Писька', style: TextStyle(fontFamily: 'Nunito', color: Color.fromARGB(255, 217, 217, 217), fontWeight: FontWeight.w900, fontSize: 45))
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(0, size.height * 0.2, 0, 20),
                  child: const Text('Добро пожаловать\nв мир профессий!', textAlign: TextAlign.center, style: TextStyle(fontFamily: 'Nunito', color: Color.fromARGB(255, 217, 217, 217), fontWeight: FontWeight.w600, fontSize: 22))
              ),

            ],
          ),
        ),
      ),
    );
  }

}