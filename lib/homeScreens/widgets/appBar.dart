import 'package:flutter/material.dart';

class MainBar extends StatelessWidget {

  final Size size;
  const MainBar(this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width * 0.9,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 17),
            child: InkWell(
              onTap: () { Navigator.pop(context); },
              child: const Image(
                image: AssetImage('assets/back.png'),
                width: 60,
              ),
            )
          ),
          const Padding(
              padding: EdgeInsets.only(top: 0),
              child: Image(
                image: AssetImage('assets/logo.png'),
                width: 45,
              )
          ),
          const Padding(
              padding: EdgeInsets.only(top: 22),
              child: Image(
                image: AssetImage('assets/photo.png'),
                width: 50,
              )
          ),
        ],
      ),
    );
  }
}
