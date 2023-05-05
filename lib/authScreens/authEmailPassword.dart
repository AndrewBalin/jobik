import 'package:flutter/material.dart';

class AuthEmailPassword extends StatefulWidget {
  const AuthEmailPassword( {Key? key});

  @override
  State<AuthEmailPassword> createState() => _AuthEmailPasswordState();
}

class _AuthEmailPasswordState extends State<AuthEmailPassword> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('auth/img_mail_password.png'),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: size.height * 0.56, left: size.width * 0.07),
              child: TextField(
                obscureText: true,
                style: TextStyle(fontSize: 19, fontFamily: 'Nunito', fontWeight: FontWeight.w700, color: Color.fromRGBO(217, 217, 217, 1)),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Пароль',
                    hintStyle: TextStyle(fontSize: 19, fontFamily: 'Nunito', fontWeight: FontWeight.w700, color: Color.fromRGBO(255, 48, 193, 1))
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.167, left: size.width * 0.114, right: size.width * 0.116),
              child: InkWell(
                onTap: (){},
                child: Image(
                  image: AssetImage('auth/img_repass.png'),
                    width: size.width * 0.77,
                    height: size.height * 0.07
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.015, left: size.width * 0.114, right: size.width * 0.116),
              child: InkWell(
                onTap: (){
                  Navigator.pushNamed(context, '/');
                },
                child: Image(
                    image: AssetImage('auth/img_onwards.png'),
                    width: size.width * 0.77,
                    height: size.height * 0.07
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
