# 📱 Namer App - Meu Primeiro Aplicativo Flutter

Este repositório contém o projeto **Namer App**, desenvolvido como parte das atividades práticas da disciplina de Programação para Dispositivos Móveis II (**pdmII-262 / Avaliação-06**). O projeto foi construído seguindo detalhadamente o codelab oficial do Google: *"Seu primeiro app do Flutter"*.

---

## 🚀 O que o aplicativo faz?

O **Namer App** é uma aplicação responsiva que gera combinações aleatórias de palavras em inglês para servir de inspiração para nomes de projetos ou startups. 

### Principais Funcionalidades:
- **Gerador de Nomes:** Gera combinações de palavras aleatórias de forma dinâmica ao clicar no botão *Next*.
- **Sistema de Favoritos:** Permite curtir/favoritar as combinações geradas clicando no botão *Like*. O ícone de coração muda de estado visual imediatamente.
- **Navegação Dinâmica:** Menu lateral (`NavigationRail`) que alterna entre a tela geradora (`GeneratorPage`) e a tela de lista de favoritos (`FavoritesPage`).
- **Layout Responsivo:** Implementação com `LayoutBuilder` que adapta o menu lateral automaticamente, mostrando ou ocultando os textos dos ícones com base na largura da tela (exibe os rótulos em telas >= 600px).
- **Gerenciamento de Estado:** Uso do pacote `Provider` (`ChangeNotifierProvider` e `context.watch`) para atualizar a interface de forma reativa e consistente.
- **Acessibilidade:** Configuração de `semanticsLabel` nos cards para garantir que leitores de tela pronunciem as palavras compostas corretamente de forma separada.

---

## 🛠️ Tecnologias Utilizadas

- **Flutter Framework** (UI e componentes Material 3)
- **Dart Language**
- **Provider (v6.0.0):** Gerenciamento de estado compartilhado.
- **English Words (v4.0.0):** Pacote utilitário para geração de pares de palavras.

---

## 📁 Estrutura do Projeto (Foco no App)

```text
namer_app/
├── lib/
│   └── main.dart          # Todo o código fonte da aplicação (Widgets, Estado e Páginas)
├── test/
│   └── widget_test.dart   # Testes de interface da aplicação
├── pubspec.yaml           # Gerenciador de dependências e metadados do Flutter
└── analysis_options.yaml  # Regras de linter aplicadas ao projeto
```

---

## 🏃 Como Executar o Projeto

Certifique-se de ter o ambiente do Flutter devidamente configurado em sua máquina (`flutter doctor`).

1. Pelo terminal, entre na pasta deste projeto específico:
   ```bash
   cd Avaliações/Avaliação-06/namer_app
   ```

2. Instale todas as dependências listadas no `pubspec.yaml`:
   ```bash
   flutter pub get
   ```

3. Execute o aplicativo no seu emulador, dispositivo físico ou navegador:
   ```bash
   flutter run
   ```
