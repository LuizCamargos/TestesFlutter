import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: telaScreen(),
    );
  }
}

class telaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF3F3F3),
      body: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
            child: Container(
              color: Color(0xff133984),
              height: 85,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Chip(
            label: Text(
              "Temperatura",
              style: TextStyle(color: Color(0xff4D4D4D)),
            ),
            backgroundColor: Color(0xffFFFFFF),
          ),
          Chip(
            label: Text(
              "Temperatura",
              style: TextStyle(color: Color(0xff4D4D4D)),
            ),
            backgroundColor: Color(0xffFFFFFF),
          ),
          Chip(
            label: Text(
              "Temperatura",
              style: TextStyle(color: Color(0xff4D4D4D)),
            ),
            backgroundColor: Color(0xffFFFFFF),
          ),
        ],
      ),
    );
  }
}
