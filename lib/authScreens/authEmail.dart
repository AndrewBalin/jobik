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
                style: TextStyle(fontSize: 19, fontFamily: 'Nunito', fontWeight: FontWeight.w700, color: Color.fromRGBO(217, 217, 217, 1)),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'E-mail',
                    hintStyle: TextStyle(fontSize: 19, fontFamily: 'Nunito', fontWeight: FontWeight.w700, color: Color.fromRGBO(255, 48, 193, 1))
                ),
              ),
            ),
          Padding(
            padding: EdgeInsets.only(top: size.height * 0.25, left: size.width * 0.114, right: size.width * 0.116),
            child: InkWell(
              onTap: (){
                Navigator.pushNamed(context, '/email_password');
              },
              child: Image(
                image: const AssetImage('auth/img_onwards.png'),
                  width: size.width * 0.77,
                  height: size.height * 0.07
              ),
            ),
          )
          ],
        ),
      ),
    );
  }
}
