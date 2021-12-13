import 'package:final_project/Screens/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Screens/discount.dart';
import 'Screens/popular_food.dart';

void main()
{
  runApp(const Myapp());
}

class Myapp extends StatelessWidget
{
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Otlob',
      theme: ThemeData( primarySwatch: Colors.pink,
          textTheme: ThemeData.light().textTheme.copyWith(
            bodyText1:const TextStyle( color: Color.fromRGBO(194, 194, 203,1)),
            bodyText2:const TextStyle( color: Color.fromRGBO(10, 135, 145,1)),
            subtitle1:const TextStyle( color: Color.fromRGBO(251, 168, 60,1)),
            subtitle2:const TextStyle( color: Color.fromRGBO(14, 18, 43,1)),
          ),
      ),
      home: const HomePage(),
    );
  }

}

