import 'package:flutter/material.dart';
import 'models/item.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Interface Aula',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
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
    //periodo.add(Periodo(
    //   codDisciplina: 151119,
    //   disciplina: "Desenvolvimento de Aplicações Orientadas a Obnjetos",
    //   turma: 0157,
    //   ensino: "Graduação"));
  }

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('Aula Interface'),
      ),
      body: ListView.builder(
        itemCount: widget.periodo.length,
        itemBuilder: (BuildContext cont, int index) {
          final periodo = widget.periodo[index];

          return Text(periodo.disciplina);
        },
      ),
    );
  }
}
