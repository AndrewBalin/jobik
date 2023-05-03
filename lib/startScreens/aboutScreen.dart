import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {

  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();

}

class _AboutScreenState extends State<AboutScreen> with
    SingleTickerProviderStateMixin {

  double _current = 0;
  PageController pageController = PageController();

  late AnimationController progressController;
  late Animation animate;


  List<String> texts = [
    'Узнай, что подходит\nименно тебе',
    'Выполняй задания и\nтесты',
    'Осваивай профессии',
    'Получай навыки',
    'Отслеживай свои успехи'
  ];

  @override
  initState() {
    super.initState();
    progressController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    animate = Tween(begin: 0, end: 0.2).animate(CurvedAnimation(
        parent: progressController, curve: Curves.easeInOutQuad));
    progressController.addListener(() {
      setState(() {});
    });
    animate.addListener(() {
      setState(() {});
    });
  }

  _nextPage() {
    setState(() {
      animate = Tween(begin: _current, end: _current + 0.2).animate(
          CurvedAnimation(
              parent: progressController, curve: Curves.easeInOutQuad));
      pageController.nextPage(
          duration: const Duration(seconds: 2), curve: Curves.easeInOutQuad);
      progressController.forward();
      _current += 0.2;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;


    return Scaffold(
      body: Stack(
        children: [
          PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: pageController,
            children: [
              for(int i = 0; i < 5; i++)...[
                Block(texts[i], i, size)
              ]
            ],
          ),
          const Positioned(
              top: 80,
              right: 24,
              child: InkWell(
                child: Text('Пропустить', style: TextStyle(fontFamily: 'Nunito', color: Color.fromARGB(255, 217, 217, 217), fontWeight: FontWeight.w800, fontSize: 24)),
              )
          ),
          Positioned(
              bottom: 100,
              width: size.width,
              child: Center(
                  child: SizedBox(
                    width: 95,
                    height: 95,
                    child: Stack(
                      children: [
                        SizedBox(
                          width: 95,
                          height: 95,
                          child: CircularProgressIndicator(
                            value: animate.value,
                            valueColor: const AlwaysStoppedAnimation<Color>(
                                Color.fromARGB(255, 217, 217, 217)),
                            backgroundColor: const Color.fromARGB(
                                125, 217, 217, 217),
                            strokeWidth: 5,
                          ),
                        ),
                        Center(
                          child: InkWell(
                            onTap: _nextPage,
                            child: const Image(image: AssetImage(
                                'about/next.png'),
                                width: 75,
                                height: 75),
                          ),
                        ),
                      ],
                    ),
                  )
              )
          )
        ],
      ),
    );
  }
}

class Block extends StatelessWidget {

  final String text;
  final int id;
  final Size size;

  const Block(this.text, this.id, this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 207, 149, 255),
          image: DecorationImage(
              image: AssetImage('about/bg$id.png'),
              fit: BoxFit.cover),
        ),
        child: Column(
          children:
          [
            Padding(
                padding: EdgeInsets.only(top: size.height*0.25),
                child: Image(image: AssetImage('about/$id.png'), width: size.width*0.85),
            ),

            Padding(
              padding: EdgeInsets.only(top: 18),
              child: Text(text, textAlign: TextAlign.center,
                  style: const TextStyle(fontFamily: 'Nunito',
                      color: Color.fromARGB(255, 217, 217, 217),
                      fontWeight: FontWeight.w900,
                      fontSize: 27)),
            )
          ],
        )
    );
  }
}

