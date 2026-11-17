# 🛒 Carrinho de Compras com Gerenciamento de Estado - Avaliação 08

Este repositório contém o projeto desenvolvido como parte das atividades práticas da disciplina de **Programação para Dispositivos Móveis II (`pdmII-262` / `Avaliação-08`)**. O projeto implementa uma aplicação de e-commerce funcional focada no gerenciamento de estado reativo em Flutter.

## 🚀 O que o aplicativo faz?

O aplicativo simula uma loja virtual completa onde o usuário pode navegar por um catálogo de produtos, adicionar itens ao carrinho, ajustar quantidades em tempo real e finalizar pedidos, utilizando o padrão **Provider** para manter a interface sincronizada com os dados.

### Principais Funcionalidades:
- **Gerenciamento de Estado Reativo (`Provider`):** Uso de `ChangeNotifier`, `ChangeNotifierProvider` e `Consumer` para atualizar contadores, listas e valores totais instantaneamente sem recarregar telas desnecessariamente.
- **Catálogo de Produtos em Grade (`GridView`):** Exibição visual organizada dos itens disponíveis com imagens, preços formatados e feedback imediato via `SnackBar` ao adicionar ao carrinho.
- **Badge Dinâmico na AppBar:** Indicador numérico em tempo real no ícone do carrinho que reflete a quantidade de produtos distintos adicionados.
- **Tela Interativa do Carrinho:** Controle individual de quantidade (`+` e `-`), remoção por gesto de deslizar (`Dismissible`) e cálculo automático do valor total da compra.
- **Fluxo de Finalização de Compra:** Exibição de diálogo de confirmação (`AlertDialog`) com limpeza automática do estado do carrinho após a conclusão do pedido.
- **Integração com Dispositivo Físico:** Compilado e testado em ambiente nativo Android (executado em dispositivo físico *moto g22*).

## 🛠️ Tecnologias Utilizadas

- **Flutter Framework** (Material 3 UI)
- **Dart Language**
- **Provider** (`^6.1.2` - Gerenciamento de Estado)
- **Android SDK & Gradle** (Compilação nativa para Android)

## 📁 Estrutura do Projeto

- `lib/main.dart`: Ponto de entrada da aplicação e injeção global do `ChangeNotifierProvider`
- `lib/models/product.dart`: Modelo de dados representando a estrutura de cada produto
- `lib/providers/cart_provider.dart`: Lógica de negócio e gerenciamento de estado do carrinho (`CartProvider` e `CartItem`)
- `lib/screens/product_catalog_screen.dart`: Tela inicial com o catálogo de produtos e contador de itens
- `lib/screens/cart_screen.dart`: Tela de revisão do carrinho, controle de quantidades e finalização
- `android/`: Ficheiros de configuração e build nativo Android
- `pubspec.yaml`: Dependências (incluindo o pacote `provider`) e configurações do Flutter

## 🏃 Como Executar o Projeto

Certifique-se de ter o ambiente do Flutter devidamente configurado na sua máquina (`flutter doctor`).

1. No terminal, navegue até a pasta desta avaliação:
   ```bash
   cd Avaliações/Avaliação-08
