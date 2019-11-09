import 'package:flutter/material.dart';

void main() => runApp(TelaHome());

class TelaHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dia 24/10",
      home: Scafold(),
    );
  }
}

class Scafold extends StatefulWidget {
  @override
  _ScafoldState createState() => _ScafoldState();
}

class _ScafoldState extends State<Scafold> {
  final GlobalKey<ScaffoldState> _scafoldkey = new GlobalKey<ScaffoldState>();
  Color cor = Color(0xffF3F3F3);
  String selecionado = "";
  int primeiro = 1, segundo = 1, soma = 0;

  void setcor(String x) {
    setState(() {
      selecionado = x;
      _showSnackBar();
    });
  }

  void fibonacci() {
    setState(() {
      primeiro = segundo;
      segundo = soma;
      soma = primeiro + segundo;
    });
  }

  _showSnackBar() {
    print("Show snackbar $selecionado");
    //inicializacao do snack bar
    final snackBar = new SnackBar(
      content: new Text("Selecionado $selecionado"),
      duration: const Duration(milliseconds: 5000),
      action: SnackBarAction(
        label: "OK",
        onPressed: () => {},
      ),
    );
    _scafoldkey.currentState.showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scafoldkey,
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
          Container(
            color: Color(0xffF3F3F3),
            padding: const EdgeInsets.only(top: 8),
            child: Material(
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text(
                      "Ar Condicionado",
                      style: TextStyle(color: Color(0xff8A8A8A)),
                    ),
                    leading: Image.asset(
                      'assets/images/air_conditioner.png',
                      height: 32,
                      width: 32,
                    ),
                    onTap: () {
                      setcor("Ar Condicionado");
                    },
                  ),
                  ListTile(
                    title: Text(
                      "Projetor",
                      style: TextStyle(color: Color(0xff8A8A8A)),
                    ),
                    leading: Image.asset(
                      'assets/images/projector.png',
                      height: 32,
                      width: 32,
                    ),
                    onTap: () {
                      setcor("Projetor");
                    },
                  ),
                  ListTile(
                    title: Text(
                      "Computador",
                      style: TextStyle(color: Color(0xff8A8A8A)),
                    ),
                    leading: Image.asset(
                      'assets/images/computer.png',
                      height: 32,
                      width: 32,
                    ),
                    onTap: () {
                      setcor("Computador");
                    },
                  ),
                  ListTile(
                    title: Text(
                      "Som",
                      style: TextStyle(color: Color(0xff8A8A8A)),
                    ),
                    leading: Image.asset(
                      'assets/images/loudspeaker.png',
                      height: 32,
                      width: 32,
                    ),
                    onTap: () {
                      setcor("Som");
                    },
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
                    onTap: () {
                      setcor("Impressora");
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.arrow_forward_ios,
                    ),
                    title: Text(selecionado),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
