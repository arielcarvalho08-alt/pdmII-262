import 'package:test/test.dart';
// Se o seu arquivo main.dart estiver dentro da pasta 'lib', use:
import '../bin/avaliacao_03.dart';

// Se o seu arquivo main.dart estiver dentro da pasta 'bin', comente a linha de cima e use esta:
// import '../bin/main.dart';

void main() {
  test('Testando o serviço de banco de dados de alunos', () async {
    final dbService = DatabaseAlunosService();
    
    // Verifica se as funções rodam normalmente sem dar erro
    expect(() async {
      await dbService.criarBancoSeNaoExistir();
      await dbService.criarTabela();
    }, returnsNormally);
  });
}
