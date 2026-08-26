// 14-agregacao.dart
// Agregação e Composição


import 'dart:convert';


class Dependente {
  late String _nome;


  Dependente(String nome) {
    this._nome = nome;
  }


  Map<String, dynamic> toJson() {
    return {'nome': _nome};
  }
}


class Funcionario {
  late String _nome;
  late List<Dependente> _dependentes;


  Funcionario(String nome, List<Dependente> dependentes) {
    this._nome = nome;
    this._dependentes = dependentes;
  }


  Map<String, dynamic> toJson() {
    return {
      'nome': _nome,
      'dependentes': _dependentes.map((d) => d.toJson()).toList(),
    };
  }
}


class EquipeProjeto {
  late String _nomeProjeto;
  late List<Funcionario> _funcionarios;


  EquipeProjeto(String nomeprojeto, List<Funcionario> funcionarios) {
    _nomeProjeto = nomeprojeto;
    _funcionarios = funcionarios;
  }


  Map<String, dynamic> toJson() {
    return {
      'nomeProjeto': _nomeProjeto,
      'funcionarios': _funcionarios.map((f) => f.toJson()).toList(),
    };
  }
}


void main() {
  // 1. Criar varios objetos Dependentes
  var dep1 = Dependente("Arthur");
  var dep2 = Dependente("Beatriz");
  var dep3 = Dependente("Carlos");


  // 2. Criar varios objetos Funcionario
  // 3. Associar os Dependentes criados aos respectivos
  //    funcionarios
  var func1 = Funcionario("Ana Silva", [dep1, dep2]);
  var func2 = Funcionario("Bruno Costa", [dep3]);
  var func3 = Funcionario("Carla Souza", []);
  // 4. Criar uma lista de Funcionarios
  List<Funcionario> listaFuncionarios = [func1, func2, func3];
  // 5. criar um objeto Equipe Projeto chamando o metodo
  //    contrutor que da nome ao projeto e insere uma
  //    coleção de funcionario
  var equipe = EquipeProjeto("Sistema de Vendas", listaFuncionarios);
  // 6. Printar no formato JSON o objeto Equipe Projeto.
  var encoder = JsonEncoder.withIndent('  ');
  String jsonResultado = encoder.convert(equipe.toJson());


  print(jsonResultado);
}

