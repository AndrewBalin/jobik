import 'package:flutter/material.dart';

class AuthEmail extends StatefulWidget {
  const AuthEmail({Key? key}) : super(key: key);

  @override
  State<AuthEmail> createState() => _AuthEmailState();
}

class _AuthEmailState extends State<AuthEmail> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('auth/img_mail_field.png'),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: size.height * 0.56, left: size.width * 0.07),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'E-mail',
                    hintStyle: TextStyle(fontSize: 19,)
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
