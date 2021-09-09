import 'package:flutter/material.dart';
import 'package:route_page/SecondPage.dart';
import 'package:route_page/ThirdPage.dart';
import 'FirstPage.dart';

void main() {
  runApp(First());
}

class First extends StatelessWidget {
  const First({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {

        //create route for every single page 
        SecondRoute.routeName: (context) => const SecondRoute(),
        ThirdPage.routeName: (context) => const ThirdPage(),
      },
      home: FirstRoute(),
    );
  }
}
