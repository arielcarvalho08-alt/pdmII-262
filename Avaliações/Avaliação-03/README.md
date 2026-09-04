# Avaliação 03 - Acesso Assíncrono a Banco de Dados com Tratamento de Exceções (Dart)

Aplicação desenvolvida em linguagem Dart simulando operações assíncronas de gerenciamento e persistência de dados em um banco SQLite (`alunos.db`), com tratamento robusto de exceções.

## 📋 Requisitos da Atividade
O programa foi estruturado para cumprir as seguintes operações de forma assíncrona:
1. **Verificação e Criação do Banco de Dados:** Cria o arquivo `alunos.db` na raiz do projeto caso ele ainda não exista.
2. **Criação de Tabela:** Verifica e inicializa a tabela `tb_alunos`.
3. **Inclusão de Registros:** Insere o registro de três alunos na tabela.
4. **Listagem de Dados:** Exibe no terminal todos os registros armazenados na tabela `tb_alunos`.
5. **Tratamento de Exceções:** Implementação de blocos `try-catch` em todas as etapas para capturar falhas de I/O ou processamento.

## 🛠️ Tecnologias Utilizadas
* **Dart SDK** (Utilizando bibliotecas nativas `dart:io` e `dart:async`, sem dependências externas).

## 🚀 Como Executar o Projeto

1. Certifique-se de ter o Dart SDK instalado na sua máquina.
2. Abra o terminal na pasta da atividade (`Avaliações/Avaliação-03`).
3. Execute o comando:
   ```bash
   dart run bin/avaliacao_03.dart
   ```
