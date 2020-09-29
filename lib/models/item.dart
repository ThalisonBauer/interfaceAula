class Item {
  List<Periodo> periodo;

  Item({this.periodo});

  Item.fromJson(Map<String, dynamic> json) {
    if (json['periodo'] != null) {
      periodo = new List<Periodo>();
      json['periodo'].forEach((v) {
        periodo.add(new Periodo.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.periodo != null) {
      data['periodo'] = this.periodo.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Periodo {
  int codDisciplina;
  String disciplina;
  int turma;
  String ensino;

  Periodo({this.codDisciplina, this.disciplina, this.turma, this.ensino});

  Periodo.fromJson(Map<String, dynamic> json) {
    codDisciplina = json['codDisciplina'];
    disciplina = json['disciplina'];
    turma = json['turma'];
    ensino = json['ensino'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['codDisciplina'] = this.codDisciplina;
    data['disciplina'] = this.disciplina;
    data['turma'] = this.turma;
    data['ensino'] = this.ensino;
    return data;
  }
}
