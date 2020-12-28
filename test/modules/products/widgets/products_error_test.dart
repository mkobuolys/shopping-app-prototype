import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:shopping_app_prototype/modules/products/bloc/products_bloc.dart';
import 'package:shopping_app_prototype/modules/products/widgets/products_error.dart';

class MockProductsBloc extends MockBloc<ProductsState> implements ProductsBloc {
}

void main() {
  group('ProductsError', () {
    ProductsBloc productsBloc;

    setUp(() {
      productsBloc = MockProductsBloc();
    });

    tearDown(() {
      productsBloc.close();
    });

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
        when(productsBloc.state).thenReturn(ProductsState.loadFailure());

        await tester.pumpWidget(
          BlocProvider.value(
            value: productsBloc,
            child: MaterialApp(
              home: Scaffold(
                body: ProductsError(),
              ),
            ),
          ),
        );

        await tester.pumpAndSettle();
        await tester.tap(find.widgetWithText(FlatButton, 'Retry'));

        verify(productsBloc.add(ProductsLoadStarted(isRefresh: true)))
            .called(1);
      },
    );
  });
}
