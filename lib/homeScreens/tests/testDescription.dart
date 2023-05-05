
import 'package:flutter/material.dart';
import '../widgets/card.dart';
import '../widgets/appBar.dart';

class TestDescription extends StatefulWidget {

  const TestDescription({ super.key });

  @override
  State<TestDescription> createState() => _TestDescriptionState();

}

class _TestDescriptionState extends State<TestDescription> {

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
                  const Align(
                    alignment: Alignment.center,
                    child: Image(
                      image: AssetImage('assets/home/tests/icon1.png'),
                      width: 142,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 7, bottom: 18),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text('Тест на определение\nпрофориентации',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontFamily: 'Nunito',
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontWeight: FontWeight.w900,
                              fontSize: 27)),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      width: 229,
                      height: 39,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 217, 217, 217),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text('начать!',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontFamily: 'Nunito',
                                color: Color.fromARGB(255, 255, 48, 193),
                                fontWeight: FontWeight.w700,
                                fontSize: 23)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 23),
                    child: SizedBox(
                      width: size.width * 0.85,
                      child: const Text('Выбор профессии один из самых важных этапов в жизни человека, ведь большая часть времени бодрствования уходит на саму работу, подготовку и дорогу к ней. От специальности зависит в каких кругах происходит общение и будут ли коллеги способствовать развитию личности.\n' +
                      'Всего 22% рабочего населения довольны своей профессией. Поэтому важно выбирать любимое направление деятельности для получения удовольствия от работы и достижения наивысших результатов, например, с помощью теста на профориентацию.',
                          textAlign: TextAlign.left,
                          style: TextStyle(fontFamily: 'Nunito',
                              color: Color.fromARGB(255, 217, 217, 217),
                              fontWeight: FontWeight.w400,
                              fontSize: 21)),
                    ),
                  )
                ],
              ),
            )
        )
    );
  }
}
