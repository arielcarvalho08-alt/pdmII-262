import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async {
  final url = Uri.parse('http://localhost:8080/api/alunos');

  try {
    print('Conectando ao servidor da Avaliação-04...\n');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      final List alunos = jsonResponse['dados'];

      print('ID   NOME          DISCIPLINA    MEDIA   FALTAS   MENSAGEM');
      print('------------------------------------------------------------');

      for (var dadosAluno in alunos) {
        final id = dadosAluno['id'];
        final nome = dadosAluno['nome'];
        final disciplina = dadosAluno['disciplina'];
        final media = dadosAluno['media'];
        final faltas = dadosAluno['faltas'];

        String mensagem = 'Aprovado';

        if (media < 6.0) {
          mensagem = 'Reprovado';
        }
        
        if (faltas > 20) {
          mensagem = 'Reprovado por Faltas';
        }

        print('$id    ${nome.toString().padRight(13)} ${disciplina.toString().padRight(13)} ${media.toString().padRight(7)} ${faltas.toString().padRight(8)} $mensagem');
      }
    } else {
      print('Erro ao buscar alunos: Status ${response.statusCode}');
    }
  } catch (e) {
    print('Erro de conexão. Certifique-se de que o servidor da Avaliação-04 está rodando!');
    print('Detalhe do erro: $e');
  }
}
