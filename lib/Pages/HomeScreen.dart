import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'DetailProblemScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TelaHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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

  String _counter, _value = "";

  Future _incrementCounter() async {
    _counter =
        await FlutterBarcodeScanner.scanBarcode("#F3F3F3", "Cancelar", true);
    setState(() {
      _value = _counter;
      //TODO, abrir uma tela aqui, logo depois que sair da seleção da sala
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => DetailScreen(),
      ));
    });
  }

  //Ler dados doShared Preferences
  getStringInShared() async {
    SharedPreferences mShared = await SharedPreferences.getInstance();
    String Unidade = mShared.getString('unidadeUnisal');
    print(Unidade);
  }

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
      //content: new Text("Selecionado $selecionado"),
      content: new Text("Selecionado $_value"),
      duration: const Duration(milliseconds: 5000),
      elevation: 1,
      action: SnackBarAction(
        label: "OK",
        onPressed: () => getStringInShared(),
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
                    title: Text(_value),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        elevation: 0,
        label: Text("Scan QR"),
        icon: Icon(Icons.camera_alt),
        onPressed: _incrementCounter,
      ),
    );
  }
}
