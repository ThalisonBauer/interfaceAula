import 'package:aula_interface/widgets/content.widget.dart';
import 'package:aula_interface/widgets/drop.widget.dart';
import 'package:aula_interface/widgets/homee.widget.dart';
import 'package:flutter/material.dart';
import 'models/item.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Interface Aula',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.white),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  var periodo = new List<Periodo>();

  HomePage() {
    periodo = [];
    periodo.add(Periodo(
        codDisciplina: 112041,
        disciplina: "Comunicação para o Planejamento Profissional",
        turma: 77096,
        ensino: "Graduação"));
  }

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(236, 236, 236, 10),
      body: ListView(
        padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 15),
        children: <Widget>[
          Container(),
          Row(
            children: [
              Homee(),
            ],
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 5),
                child: Text(
                  "Período",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
              )
            ],
          ),
          Container(
            child: Drop(),
          ),
          Content(),
        ],
      ),
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('Aula Interface'),
      ),
    );
  }
}
