import 'package:flutter/material.dart';
import 'SecondPage.dart';

class FirstRoute extends StatelessWidget {
  // static const routeName = '/firstRoute';
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go to 2nd Page'),
          onPressed: () {
            //use pushNamed for send Data using arguments
            Navigator.pushNamed(context, SecondRoute.routeName,
                arguments: ScreenArguments('2nd Page', 'This from First Page'));
          },
        ),
      ),
    );
  }
}

class ScreenArguments {
  final String title;
  final String message;
  ScreenArguments(this.title, this.message);
}
