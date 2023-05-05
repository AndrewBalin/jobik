import 'package:flutter/material.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  List<String> items = ['<не выбрано>', 'путешествия', 'чтение', 'чтение', 'кулинария', 'рукоделие', 'занятия спортом', 'коллекционирование редкостей', 'выращивание растений и уход за домашними животными', 'литературное творчество'];
  String? selectedItem = '<не выбрано>';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('auth/img_about_me.png'),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.528, left: size.width * 0.084),
              child: InkWell(
                onTap: (){},
                child: Row(
                  children: [
                    Image(image: AssetImage('auth/img_photo.png'), width: size.width * 0.217),
                    Padding(
                      padding: EdgeInsets.only(left: size.width * 0.054),
                      child: Text(
                        'Выбери фото профиля',
                        style: TextStyle(fontSize: 19, fontWeight: FontWeight.w700, fontFamily: 'Nunito', color: Color.fromRGBO(255, 48, 193, 1)),
                      ),
                    )
                  ],
                )
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.034, left: size.width * 0.084, right: size.width * 0.084),
              child: Row(
                children: [
                  SizedBox(
                    width: size.width * 0.464,
                    child: TextField(
                      style: TextStyle(fontSize: 19, fontFamily: 'Nunito', fontWeight: FontWeight.w700, color: Color.fromRGBO(217, 217, 217, 1)),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Имя',
                          hintStyle: TextStyle(fontSize: 19, fontFamily: 'Nunito', fontWeight: FontWeight.w700, color: Color.fromRGBO(255, 48, 193, 1))
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: size.width * 0.1),
                    child: SizedBox(
                      width: size.width * 0.266,
                      child: TextField(
                        style: TextStyle(fontSize: 19, fontFamily: 'Nunito', fontWeight: FontWeight.w700, color: Color.fromRGBO(217, 217, 217, 1)),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Возраст',
                            hintStyle: TextStyle(fontSize: 19, fontFamily: 'Nunito', fontWeight: FontWeight.w700, color: Color.fromRGBO(255, 48, 193, 1))
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.01, left: size.width * 0.084, right: size.width * 0.084),
              child: SizedBox(
                width: size.width * 0.8,
                child: DropdownButton<String>(
                    value: selectedItem,
                    items: items
                      .map((item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(item)
                    ))
                    .toList(),
                    onChanged: (item) => setState(() => selectedItem = item),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(),
              child: InkWell(
                onTap: (){},
                child: Image(
                  image: AssetImage('auth/img_onwards.png'),
                    width: size.width * 0.77,
                    height: size.height * 0.07
                    )
                ),
            ),
          ],
        ),
      ),
    );
  }
}
