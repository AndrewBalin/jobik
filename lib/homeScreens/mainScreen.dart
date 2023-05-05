import 'package:flutter/material.dart';
import 'widgets/card.dart';

class MainScreen extends StatefulWidget {

  const MainScreen({ super.key });

  @override
  State<MainScreen> createState() => _MainScreenState();

}

class _MainScreenState extends State<MainScreen> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;

    return Scaffold(
        body: Container(
            color: const Color.fromARGB(255, 207, 149, 255),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.only(top: 60, bottom: 40),
                      child: Align(
                        alignment: Alignment.center,
                        child: Row(
                          children: const [
                            Image(
                              image: AssetImage('logo.png'),
                              width: 60,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text('Привет, человек!',
                                  style: TextStyle(fontFamily: 'Nunito',
                                      color: Color.fromARGB(255, 217, 217, 217),
                                      fontWeight: FontWeight.w800,
                                      fontSize: 23)),
                            ),
                            Padding(
                                padding: EdgeInsets.only(left: 80),
                                child: InkWell(
                                    child: Image(
                                      image: AssetImage('photo.png'),
                                      width: 50,
                                    )
                                )
                            ),
                          ],
                        ),
                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 35),
                    child: MenuCard(size, 'Каталог профессий', 'home/1.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 35),
                    child: MenuCard(size, 'Задания и тесты', 'home/2.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 35, bottom: 80),
                    child: MenuCard(size, 'Рекомендации', 'home/3.png'),
                  )
                ],
              ),
            )
        )
    );
  }
}
