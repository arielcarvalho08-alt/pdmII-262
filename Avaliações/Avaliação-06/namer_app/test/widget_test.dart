import 'package:flutter_test/flutter_test.dart';
import 'package:namer_app/main.dart';

void main() {
  testWidgets('Verifica se o app exibe a ideia aleatoria', (WidgetTester tester) async {
    // Carrega o seu novo aplicativo MyApp
    await tester.pumpWidget(MyApp());

    // Verifica se o texto fixo "A random idea:" aparece na tela
    expect(find.text('A random idea:'), findsOneWidget);
  });
}
