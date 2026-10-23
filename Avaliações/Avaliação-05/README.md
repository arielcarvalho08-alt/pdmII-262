# Avaliação 05 - Cliente HTTP em Dart 📡

Este projeto consiste em uma aplicação cliente em **Dart** desenvolvida para consumir a API REST de alunos criada na **Avaliação-04**. O cliente faz uma requisição HTTP, recupera os dados dos alunos e aplica regras de negócio para determinar o status acadêmico de cada um.

## 🛠️ Tecnologias Utilizadas

* **Dart SDK** (v3.2.0 ou superior)
* **Http** (v1.1.0) - Pacote para realizar requisições HTTP

## 📋 Requisitos da Atividade

1. **Adaptação do Servidor:** Modificar a estrutura da entidade `Aluno` para conter: `id`, `nome`, `disciplina`, `media` e `faltas`.
2. **Consumo de Dados:** Acessar todos os alunos registrados no servidor web da Avaliação-04 (`http://localhost:8080/api/alunos`).
3. **Regras Condicionais:** 
   * Se `Média < 6.0` → **Reprovado**
   * Caso contrário → **Aprovado**
   * Se `Faltas > 20` → **Reprovado por Faltas** (Prevalece sobre a nota)
4. **Formatação:** Exibir o resultado final no terminal organizado em colunas no formato: `ID NOME DISCIPLINA MEDIA FALTAS MENSAGEM`.

## 🚀 Como Executar o Cliente

> ⚠️ **Importante:** Certifique-se de que o servidor da **Avaliação-04** está rodando de fundo na porta `8080` antes de iniciar o cliente!

1. Pelo terminal, entre no diretório da atividade:
   ```bash
   cd "Avaliações/Avaliação-05"
   ```

2. Instale as dependências:
   ```bash
   dart pub get
   ```

3. Execute o programa cliente:
   ```bash
   dart run bin/dart_cliente_alunos.dart
   ```

## 🖥️ Exemplo de Saída no Terminal

Ao rodar a aplicação com o servidor ativo, o resultado impresso segue o padrão abaixo:

```text
Conectando ao servidor da Avaliação-04...

ID   NOME          DISCIPLINA    MEDIA   FALTAS   MENSAGEM
------------------------------------------------------------
1    Ana Souza     PDM II        8.5     10       Aprovado
2    Bruno Lima    PDM II        5.2     12       Reprovado
3    Carla Mendes  PDM II        9.0     25       Reprovado por Faltas
4    Diego Alves   PDM II        4.5     30       Reprovado por Faltas
```
