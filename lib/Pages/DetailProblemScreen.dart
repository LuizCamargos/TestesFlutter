import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: telaScreen(),
    );
  }
}

class telaScreen extends StatefulWidget {
  @override
  _telaScreenState createState() => _telaScreenState();
}

class _telaScreenState extends State<telaScreen> {
  final _textcontroller = TextEditingController();

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
          ListTile(
            title: Text(
              "Impressora",
              style: TextStyle(color: Color(0xff8A8A8A)),
            ),
            leading: Image.asset(
              'assets/images/printer.png',
              height: 32,
              width: 32,
            ),
          ),
          TextField(
            controller: _textcontroller,
            decoration: InputDecoration(hintText: "digite um comentário"),
            maxLines: 4,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        elevation: 2,
        label: Text(
          "Confirmar",
          style: TextStyle(
              //color: Color(0xff8A8A8A),
              ),
        ),
        icon: Icon(Icons.check),
        onPressed: () => print("Text: ${_textcontroller.text}"),
      ),
    );
  }

  @override
  void dispose() {
    _textcontroller.dispose();
    super.dispose();
  }
}
