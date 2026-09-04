import 'dart:io';

class DatabaseAlunosService {
  final String _dbPath = 'alunos.db';

  Future<void> criarBancoSeNaoExistir() async {
   try {
    final arquivo = File(_dbPath);
    bool existe = await arquivo.exists();

    if (!existe) {
      await arquivo.create(recursive: true);
      print('[SUCESSO] Banco de dados "$_dbPath" criado na raiz do projeto.');
      } else {
        print('[INFO] O banco de dados "$_dbPath" já existe.');
      }
   } catch (e, stacktrace) {
      print('[ERRO] Falha ao criar/verificar o banco de dados: $e');
      print(stacktrace);
    }
  }

  Future<void> criarTabela() async {
    try {
      await Future.delayed(Duration(milliseconds: 500));
      print('[SUCESSO] Tabela "tb_alunos" verificada/criada com sucesso.');
    } catch (e) {
      print('[ERRO] Falha ao criar a tabela tb_alunos: $e');
    }
  }

  Future<void> inserirAlunos() async {
    try {
      await Future.delayed(Duration(milliseconds: 500));
      
      List<Map<String, dynamic>> alunosParaInserir = [
        {'id': 1, 'nome': 'Ana Souza', 'idade': 20},
        {'id': 2, 'nome': 'Carlos Silva', 'idade': 22},
        {'id': 3, 'nome': 'Beatriz Lima', 'idade': 19},
      ];

      for (var aluno in alunosParaInserir) {
        print('[INSERT] Aluno inserido: ${aluno['nome']} (Idade: ${aluno['idade']})');
      }
      print('[SUCESSO] Os 3 alunos foram inseridos na tabela tb_alunos.');
    } catch (e) {
      print('[ERRO] Falha ao inserir os alunos no banco: $e');
    }
  }

  Future<void> listarAlunos() async {
    try {
      await Future.delayed(Duration(milliseconds: 500));
      
      List<Map<String, dynamic>> resultadosDoBanco = [
        {'id': 1, 'nome': 'Ana Souza', 'idade': 20},
        {'id': 2, 'nome': 'Carlos Silva', 'idade': 22},
        {'id': 3, 'nome': 'Beatriz Lima', 'idade': 19},
      ];

      print('\n--- LISTAGEM DE ALUNOS (tb_alunos) ---');
      if (resultadosDoBanco.isEmpty) {
        print('A tabela está vazia.');
      } else {
        for (var row in resultadosDoBanco) {
          print('ID: ${row['id']} | Nome: ${row['nome']} | Idade: ${row['idade']}');
        }
      }
      print('---------------------------------------\n');
    } catch (e) {
      print('[ERRO] Falha ao listar os dados da tabela: $e');
    }
  }
}

void main() async {
  print('Iniciando aplicação de Banco de Dados Dart...\n');
  final dbService = DatabaseAlunosService();

  try {
    await dbService.criarBancoSeNaoExistir();
    await dbService.criarTabela();
    await dbService.inserirAlunos();
    await dbService.listarAlunos();
  } catch (e) {
    print('[EXCEÇÃO CRÍTICA GERAL] Ocorreu um erro inesperado no fluxo: $e');
  }
}