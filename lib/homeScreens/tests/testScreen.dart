import 'package:flutter/material.dart';
import '../widgets/card.dart';
import '../widgets/appBar.dart';

class TestScreen extends StatefulWidget {

  const TestScreen({ super.key });

  @override
  State<TestScreen> createState() => _TestScreenState();

}

class _TestScreenState extends State<TestScreen> {

  List<Map> test = [
    {'question': 'Вы бы предпочли', 'answers': [{'image': 2, 'text': 'Разрабатывать новые лекарственные средства'}, {'image': 3, 'text': 'Проводить денежные операции между счетами, вести строгий учет движения денежных средств'}]},
  ];

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
            color: const Color.fromARGB(255, 100, 20, 166),
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
                  Text('0/42',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'Nunito',
                          color: Color.fromARGB(255, 255, 48, 193),
                          fontWeight: FontWeight.w900,
                          fontSize: 27)),
                  PageView(
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      for(var i; i < test.length; i++) {
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 20, bottom: 20),
                              child: Text('$i. ${test[i].question}:',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontFamily: 'Nunito',
                                      color: Color.fromARGB(255, 255, 48, 193),
                                      fontWeight: FontWeight.w900,
                                      fontSize: 27)),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 25),
                              child: Text('$i. ${test[i].question}:',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontFamily: 'Nunito',
                                      color: Color.fromARGB(255, 255, 48, 193),
                                      fontWeight: FontWeight.w900,
                                      fontSize: 27)),
                            ),
                          ],
                        ),
                      }
                    ],
                  ),
                ],
              ),
            )
        )
    );
  }
}

class AnswerCard extends StatelessWidget {

  final Size size;
  final String text;
  final String image;
  const AnswerCard(this.size, this.text, this.image, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.9,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 150, 60, 223),
          borderRadius: BorderRadius.circular(45)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Center(
              child: Image(
                image: AssetImage(image),
                height: 101,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 23, right: 23, bottom: 21, top: 5),
            child: Text(text,
                style: const TextStyle(fontFamily: 'Nunito',
                    color: Color.fromARGB(255, 217, 217, 217),
                    fontWeight: FontWeight.w900,
                    fontSize: 22)),
          ),
        ],
      ),
    );
  }
}
