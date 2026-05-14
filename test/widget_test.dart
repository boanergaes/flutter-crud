import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_crud/main.dart';
import 'package:provider/provider.dart';
import 'package:flutter_crud/providers/post_provider.dart';

void main() {
  testWidgets('App loads and shows title', (WidgetTester tester) async {
    await tester.pumpWidget(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => PostProvider()),
        ],
        child: const PostApp(),
      ),
    );

    expect(find.text('Connectify'), findsOneWidget);
  });
}
