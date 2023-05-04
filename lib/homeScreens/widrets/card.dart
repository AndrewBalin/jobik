import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {

  final Size size;
  final String text;
  final String image;
  const MenuCard(this.size, this.text, this.image, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.9,
      height: 346,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 100, 20, 166),
        borderRadius: BorderRadius.circular(45)
      ),
      /*child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 35, left: 35),
            child: Text(text,
                style: const TextStyle(fontFamily: 'Nunito',
                    color: Color.fromARGB(255, 217, 217, 217),
                    fontWeight: FontWeight.w900,
                    fontSize: 27)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 14),
            child: Center(
              child: Image(
                image: AssetImage(image),
                height: 200,
              ),
            ),
          )
        ],
      ),*/
    );
  }
}