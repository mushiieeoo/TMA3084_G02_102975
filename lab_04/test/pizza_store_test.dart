import 'package:flutter_test/flutter_test.dart';
import 'package:lab_04/cheese_pizza.dart';
import 'package:lab_04/fries.dart';
import 'package:lab_04/main.dart';
import 'package:lab_04/vegetable_pizza.dart';

void main() {
  testWidgets('menu lists the three items', (WidgetTester tester) async {
    await tester.pumpWidget(const Lab04());

    expect(find.text('Android ATC Pizza Place'), findsOneWidget);
    expect(find.text('Vegetable Pizza'), findsOneWidget);
    expect(find.text('Cheese Pizza'), findsOneWidget);
    expect(find.text('Box of Fries'), findsOneWidget);
  });

  testWidgets('tapping card opens its screen', (WidgetTester tester) async {
    await tester.pumpWidget(const Lab04());

    await tester.tap(find.text('Vegetable Pizza'));
    await tester.pumpAndSettle();
    expect(find.byType(VegetablePizzaScreen), findsOneWidget);

    // go back to the menu before tapping the next card
    await tester.pageBack();
    await tester.pumpAndSettle();

    await tester.tap(find.text('Cheese Pizza'));
    await tester.pumpAndSettle();
    expect(find.byType(CheesePizzaScreen), findsOneWidget);

    await tester.pageBack();
    await tester.pumpAndSettle();

    await tester.tap(find.text('Box of Fries'));
    await tester.pumpAndSettle();
    expect(find.byType(FriesScreen), findsOneWidget);

    await tester.pageBack();
    await tester.pumpAndSettle();
  });

  testWidgets('back button returns to menu', (WidgetTester tester) async {
    await tester.pumpWidget(const Lab04());

    await tester.tap(find.text('Cheese Pizza'));
    await tester.pumpAndSettle();
    expect(find.byType(CheesePizzaScreen), findsOneWidget);

    await tester.pageBack();
    await tester.pumpAndSettle();

    expect(find.text('Android ATC Pizza Place'), findsOneWidget);
    expect(find.byType(CheesePizzaScreen), findsNothing);
  });
}
