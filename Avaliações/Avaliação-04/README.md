# Avaliação 04 - API REST de Alunos em Dart 🚀

Esta é uma aplicação web desenvolvida em **Dart** que implementa uma API REST para gerenciamento de alunos. O projeto utiliza o framework leve **Shelf** para o roteamento e gerenciamento de requisições HTTP, mantendo os dados simulados em memória (mock).

## 🛠️ Tecnologias Utilizadas

* **Dart SDK** (v3.2.0 ou superior)
* **Shelf** (v1.4.2) - Framework web composável
* **Shelf Router** (v1.1.4) - Mecanismo de rotas HTTP

## 📂 Estrutura do Projeto

```text
Avaliação-04/
├── bin/
│   └── server.dart          # Código fonte do servidor e modelo de dados
├── pubspec.yaml             # Dependências e configurações do Dart
└── README.md                # Documentação da atividade
```

## 🚀 Como Executar o Projeto

1. Certifique-se de estar dentro do diretório da atividade no terminal:
   ```bash
   cd "Avaliações/Avaliação-04"
   ```

2. Instale as dependências do projeto:
   ```bash
   dart pub get
   ```

3. Inicie o servidor local:
   ```bash
   dart run bin/server.dart
   ```
   O servidor estará ativo e escutando em: `http://localhost:8080`

## 🛣️ Rotas Disponíveis e Testes (cURL)

Você pode testar os endpoints da API utilizando o Prompt de Comando (CMD) ou qualquer cliente HTTP (como Postman/Insomnia).

### 1. Verificar Saúde do Servidor
* **Método:** `GET`
* **Rota:** `/health`
* **Comando:**
  ```bash
  curl http://localhost:8080/health
  ```

### 2. Listar Todos os Alunos
* **Método:** `GET`
* **Rota:** `/api/alunos`
* **Filtros Opcionais (Query Parameters):** `curso`, `nome`, `ativo`
* **Comandos:**
  ```bash
  # Listar todos
  curl http://localhost:8080/api/alunos

  # Filtrar por curso
  curl "http://localhost:8080/api/alunos?curso=Engenharia"

  # Filtrar por nome
  curl "http://localhost:8080/api/alunos?nome=ana"
  ```

### 3. Buscar Aluno por ID
* **Método:** `GET`
* **Rota:** `/api/alunos/<id>`
* **Comando:**
  ```bash
  curl http://localhost:8080/api/alunos/2
  ```

### 4. Cadastrar Novo Aluno
* **Método:** `POST`
* **Rota:** `/api/alunos`
* **Comando:**
  ```bash
  curl -X POST http://localhost:8080/api/alunos -H "Content-Type: application/json" -d "{\"nome\": \"Eduardo Costa\", \"email\": \"eduardo.costa@example.com\", \"curso\": \"Engenharia de Produção\", \"idade\": 22, \"media\": 8.1, \"ativo\": true}"
  ```

## 📝 Observações
* Como os dados são mantidos em memória (lista mockada), as alterações (como novos cadastros) são perdidas sempre que o processo do servidor for reiniciado.
