import 'package:flutter/material.dart';
import 'package:route_page/FirstPage.dart';
import 'ThirdPage.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);
  static const routeName = '/secondRoute';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
      ),
      body: Center(
        child: Column(
          children: [
            Text(args.message),
            ElevatedButton(
              child: Text('Go To Third Page'),
              onPressed: () {
                Navigator.pushNamed(context, ThirdPage.routeName,
                    arguments: ScreenArguments('Third Page', 'Success'));
              },
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate back to first route when tapped.
                Navigator.pop(context);
              },
              child: Text("Back"),
            ),
          ],
        ),
      ),
    );
  }
}
