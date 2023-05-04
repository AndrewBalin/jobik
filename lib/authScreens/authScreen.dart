import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('auth/img.png'), fit: BoxFit.cover),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: size.height * 0.55, left: size.width * 0.14),
            child: Row(
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/email');
                    },
                    child: Image(
                        image: const AssetImage('auth/img_mail.png'),
                        width: size.width * 0.22,
                        height: size.height * 0.1)),
                Padding(
                  padding: EdgeInsets.only(left: size.width * 0.04),
                  child: InkWell(
                      onTap: () {},
                      child: Image(
                          image: const AssetImage('auth/img_vk.png'),
                          width: size.width * 0.22,
                          height: size.height * 0.1)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: size.width * 0.04),
                  child: InkWell(
                      onTap: () {},
                      child: Image(
                          image: const AssetImage('auth/img_apple.png'),
                          width: size.width * 0.22,
                          height: size.height * 0.1)),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: size.height * 0.13, left: size.width * 0.126, right: size.width * 0.105),
            child: InkWell(
                onTap: () {},
                child: Image(
                    image: const AssetImage('auth/img_repass.png'),
                    width: size.width * 0.77,
                    height: size.height * 0.07)),
          )
        ],
      ),
    ));
  }
}
