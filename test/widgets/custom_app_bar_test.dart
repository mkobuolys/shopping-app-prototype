import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:shopping_app_prototype/widgets/custom_app_bar.dart';
import 'package:shopping_app_prototype/widgets/shopping_card_button.dart';

void main() {
  group('CustomAppBar', () {
    testWidgets(
      'should render custom AppBar',
      (tester) async {
        const title = 'Lorem Ipsum';

        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              appBar: CustomAppBar(title: title),
              body: Container(),
            ),
          ),
        );

        expect(
          find.byWidgetPredicate(
            (widget) =>
                widget is AppBar &&
                widget.preferredSize == Size.fromHeight(kToolbarHeight),
          ),
          findsOneWidget,
        );
        expect(find.text(title), findsOneWidget);
        expect(find.byType(ShoppingCardButton), findsOneWidget);
      },
    );
  });
}
