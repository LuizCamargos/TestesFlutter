import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './UI/CustomInputText.dart';

void main() => runApp(TelaHome());

class TelaHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dia 24/10",
      debugShowCheckedModeBanner: false,
      home: Scafold(),
    );
  }
}

class Scafold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.amber,
      child: Container(
        padding: const EdgeInsets.only(top: 30),
        child: Material(
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("Ar Condicionado"),
                leading: Icon(Icons.accessibility_new),
                onTap: () => print("Ar Condicionado"),
              ),
              ListTile(
                title: Text("Projetor"),
                leading: Icon(Icons.accessibility_new),
                onTap: () => print("Projetor"),
              ),
              ListTile(
                title: Text("Projetor"),
                leading: Icon(Icons.accessibility_new),
                onTap: () => print("Testando"),
              ),
              ListTile(
                title: Text("Projetor"),
                leading: Icon(Icons.accessibility_new),
                onTap: () => print("Projetor"),
              ),
              ListTile(
                title: Text("Projetor"),
                leading: Icon(Icons.accessibility_new),
                onTap: () => print("Projetor"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*

Botão Simples
RaisedButton(
              color: Colors.white,
              elevation: 2,
              onPressed: () => print("Botão Central"),
              child: Text("Clique aqui"),
            ),
*/
class BotaoTOP extends StatefulWidget {
  @override
  _BotaoTOPState createState() => _BotaoTOPState();
}

class _BotaoTOPState extends State<BotaoTOP> {
  int primeiro = 1, segundo = 1, soma = 0;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(40)),
      child: new RaisedButton(
        elevation: 0.1,
        child: Text(
          'olá $soma',
        ),
        onPressed: fibonacci,
      ),
    );
  }

  void fibonacci() {
    setState(() {
      primeiro = segundo;
      segundo = soma;
      soma = primeiro + segundo;
    });
  }
}

/*
class Scafold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        elevation: 5,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.indigo),
          onPressed: () => print("Icone Voltar"),
        ),
        title: Text(
          "voltar",
          textDirection: TextDirection.ltr,
        ),
      ),
      floatingActionButton: BotaoTOP(),
      body: new Center(
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.edit_attributes),
              title: Text("ENTadfafadfadfafadAO"),
              onTap: () => print("BT1"),
            ),
            ListTile(
              leading: Icon(Icons.accessibility_new),
              title: Text("SÇLDJFLA6FASDINkdaj"),
              onTap: () => print("BT2"),
            ),
            Container(height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,)
          ],
        ),
        
      ),
      
    );
  }
}

/*
Botão Simples
RaisedButton(
              color: Colors.white,
              elevation: 2,
              onPressed: () => print("Botão Central"),
              child: Text("Clique aqui"),
            ),
*/
class BotaoTOP extends StatefulWidget {
  @override
  _BotaoTOPState createState() => _BotaoTOPState();
}

class _BotaoTOPState extends State<BotaoTOP> {
  int primeiro = 1, segundo = 1, soma = 0;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(40)),
      child: new RaisedButton(
        elevation: 0.1,
        child: Text(
          'olá $soma',
        ),
        onPressed: fibonacci,
      ),
    );
  }

  void fibonacci() {
    setState(() {
      primeiro = segundo;
      segundo = soma;
      soma = primeiro + segundo;
    });
  }
}
*/
