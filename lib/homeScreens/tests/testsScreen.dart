import 'package:flutter/material.dart';
import '../widgets/card.dart';
import '../widgets/appBar.dart';

class TestsScreen extends StatefulWidget {

  const TestsScreen({ super.key });

  @override
  State<TestsScreen> createState() => _TestsScreenState();

}

class _TestsScreenState extends State<TestsScreen> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;

    return Scaffold(
        body: Container(
            constraints: BoxConstraints(
              minHeight: size.height
            ),
            color: const Color.fromARGB(255, 207, 149, 255),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.only(top: 60, bottom: 40),
                      child: Align(
                        alignment: Alignment.center,
                        child: MainBar(size),
                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 35),
                    child: InkWell(
                        onTap: () { Navigator.pushNamed(context, '/test'); },
                        child: TestCard(size, 'Тест на определение\nориентации', 'home/tests/icon1.png'),
                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 35),
                    child: TestCard(size, 'Тест на дауна', 'home/tests/icon1.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 35),
                    child: TestCard(size, 'Тест Майерс-Бриггс', 'home/tests/icon1.png'),
                  ),
                ],
              ),
            )
        )
    );
  }
}
