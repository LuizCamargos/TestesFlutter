import 'package:flutter/material.dart';

void main() => runApp(MainScreen());

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreenUI(),
      color: Color(0xffF3F3F3),
    );
  }
}

class MainScreenUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(
              color: Color(0xffdcdcdc),
              elevation: 3,
              child: Container(
                padding: const EdgeInsets.all(12),
                height: 180,
                width: 128,
                child: Center(
                  child: Text(
                    "São José",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff004496),
                      fontSize: 22,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
            ),
            Card(
              color: Color(0xffdcdcdc),
              elevation: 3,
              child: Container(
                padding: const EdgeInsets.all(12),
                height: 180,
                width: 128,
                child: Center(
                  child: Text(
                    "Liceu",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Color(0xff004496)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        alignment: Alignment.center,
        child: Image.asset('assets/images/logo_unisal.png'),
        width: 200,
        height: 120,
      ),
    );
  }
}
