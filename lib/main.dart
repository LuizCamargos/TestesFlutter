import 'package:flutter/material.dart';

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
      color: Color(0xffF3F3F3),
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            child: Container(
              color: Color(0xff133984),
              height: 90,
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
                    onTap: () => print("Ar Condicionado"),
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
                    onTap: () => print("Projetor"),
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
                    onTap: () => print("Computador"),
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
                    onTap: () => print("Som"),
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
                    onTap: () => print("Impressora"),
                  ),
                ],
              ),
            ),
          ),
        ],
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
