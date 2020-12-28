import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:shopping_app_prototype/modules/products/bloc/products_bloc.dart';
import 'package:shopping_app_prototype/modules/products/models/products_data.dart';
import 'package:shopping_app_prototype/modules/products/repositories/products_repository.dart';
import 'package:shopping_app_prototype/modules/products/widgets/products_error.dart';

class MockProductsRepository extends Mock implements ProductsRepository {}

void main() {
  group('ProductsError', () {
    testWidgets(
      'should render products error widget',
      (tester) async {
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: ProductsError(),
            ),
          ),
        );

        expect(find.text('Oops, something went wrong...'), findsOneWidget);
        expect(find.widgetWithText(FlatButton, 'Retry'), findsOneWidget);
      },
    );

    testWidgets(
      'should start loading products on retry button tap',
      (tester) async {
        final repository = MockProductsRepository();
        when(repository.getProductsData(any)).thenAnswer(
          (_) async => ProductsData(
            products: [],
            total: 0,
          ),
        );

        final bloc = ProductsBloc(repository: repository);

        await tester.pumpWidget(
          BlocProvider.value(
            value: bloc,
            child: MaterialApp(
              home: Scaffold(
                body: ProductsError(),
              ),
            ),
          ),
        );

        await tester.tap(find.widgetWithText(FlatButton, 'Retry'));
        await tester.pump(const Duration(milliseconds: 500));

        verify(repository.getProductsData(any)).called(1);
      },
    );
  });
}
