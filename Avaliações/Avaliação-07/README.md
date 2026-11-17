# 📱 Animated Responsive Layout - Avaliação 07

Este repositório contém o projeto desenvolvido como parte das atividades práticas da disciplina de Programação para Dispositivos Móveis II (**pdmII-262 / Avaliação-07**). O projeto foi construído seguindo o codelab oficial do Google: *"Building Animated Responsive Layouts in Flutter"*.

---

## 🚀 O que o aplicativo faz?

O aplicativo é uma demonstração prática de **interfaces adaptativas e responsivas avançadas** usando Flutter e padrões visuais do **Material 3**. Ele simula um cliente de e-mail/mensagens dinâmico que reestrutura o seu visual e transições conforme o tamanho e orientação da tela.

### Principais Funcionalidades:
- **Layout Adaptativo Responsivo:** Utiliza `LayoutBuilder` e pontos de interrupção (*breakpoints*) para ajustar a interface automaticamente em celulares, tablets e computadores.
- **Navegação Dinâmica:** Transição suave entre menus inferiores (`NavigationBar`) em dispositivos móveis compactos e barra lateral de navegação (`NavigationRail`) em telas maiores.
- **Visibilidade de Elementos Baseada em Espaço:** Ocultação ou exibição inteligente de elementos (como o avatar do remetente e o botão de favoritar `StarButton`) para evitar quebra de layout em telas pequenas.
- **Animações Fluidas:** Transições animadas entre diferentes tamanhos e visões de tela, evitando cortes secos na interface.
- **Integração com Dispositivo Físico:** Compilado e testado em ambiente nativo Android (executado em dispositivo físico `moto g22`).

---

## 🛠️ Tecnologias Utilizadas

- **Flutter Framework** (Material 3 UI e componentes responsivos)
- **Dart Language**
- **Android SDK & NDK** (Compilação nativa para Android)

---

## 📁 Estrutura do Projeto

- **`lib/main.dart`**: Código principal da aplicação (Layouts, Widgets e Animações)
- **`android/`**: Ficheiros de configuração e build nativo Android
- **`assets/`**: Recursos visuais do aplicativo
- **`pubspec.yaml`**: Dependências e configurações do Flutter
- **`analysis_options.yaml`**: Regras de linter aplicadas ao código Dart

---

## 🏃 Como Executar o Projeto

Certifique-se de ter o ambiente do Flutter devidamente configurado na sua máquina (`flutter doctor`).

1. No terminal, navegue até a pasta desta avaliação:
   `cd Avaliações/Avaliação-07`

2. Instale as dependências do projeto:
   `flutter pub get`

3. Execute o aplicativo no seu dispositivo físico, emulador ou desktop:
   `flutter run`

---
