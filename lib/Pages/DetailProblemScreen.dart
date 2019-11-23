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
              "Ar Condicionado",
              style: TextStyle(color: Color(0xff8A8A8A)),
            ),
            leading: Image.asset(
              'assets/images/air_conditioner.png',
              height: 36,
              width: 36,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: _textcontroller,
              autofocus: false,
              decoration: InputDecoration(
                  hintText: "digite um comentário",
                  hintStyle: TextStyle(
                    color: Color(0xff545454),
                  ),
                  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
              maxLines: 4,
            ),
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
        onPressed: () {
          Map requisicao = {
            'Local': "Sala 01",
            'Categoria': "AR CONDICIONADO",
            'Detalhes': 'está muito quente aqui',
            'HoraAtual': "1574529362",
            'Solucionado': "",
            'TempoConclusao': "",
          };
        },
      ),
    );
  }

  @override
  void dispose() {
    _textcontroller.dispose();
    super.dispose();
  }
}
