import 'package:flutter/material.dart';
import 'package:route_page/FirstPage.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);
  static const routeName = '/thirdRoute';

  @override
  Widget build(BuildContext context) {
    final args2 = ModalRoute.of(context)!.settings.arguments as ScreenArguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(args2.title),
      ),
      body: Center(
        child: Column(
          children: [
            Text(args2.message),
            ElevatedButton(
              onPressed: () {
                // Navigate back to first route when tapped.
                Navigator.pop(context);
              },
              child: Text("Back"),
            ),
            ElevatedButton(
              child: Text('Back First Page'),
              onPressed: () {
                //Navigator Push use pore go one page to another page

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FirstRoute()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
