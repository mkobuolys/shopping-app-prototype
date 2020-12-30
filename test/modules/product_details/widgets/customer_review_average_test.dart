import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:shopping_app_prototype/modules/product_details/widgets/customer_review_average.dart';

void main() {
  group('CustomerReviewAverage', () {
    testWidgets(
      'should render customer review widget',
      (tester) async {
        const average = 4.5;

        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: CustomerReviewAverage(average: average),
            ),
          ),
        );

        expect(find.text(average.toString()), findsOneWidget);
        expect(find.byIcon(Icons.star), findsOneWidget);
      },
    );
  });
}
