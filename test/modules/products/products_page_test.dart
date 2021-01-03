import 'package:bloc_test/bloc_test.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:shopping_app_prototype/modules/cart/bloc/cart_bloc.dart';
import 'package:shopping_app_prototype/modules/products/products.dart';
import 'package:shopping_app_prototype/widgets/custom_app_bar.dart';

class MockCartBloc extends MockBloc<CartState> implements CartBloc {}

class MockProductsBloc extends MockBloc<ProductsState> implements ProductsBloc {
}

void main() {
  group('ProductsPage', () {
    CartBloc cartBloc;
    ProductsBloc productsBloc;

    setUp(() {
      cartBloc = MockCartBloc();
      when(cartBloc.state).thenReturn(CartState.initial());

      productsBloc = MockProductsBloc();
    });

    tearDown(() {
      cartBloc.close();
      productsBloc.close();
    });

    Future<void> _renderProductsPage(WidgetTester tester) {
      return tester.pumpWidget(
        MultiBlocProvider(
          providers: [
            BlocProvider.value(value: cartBloc),
            BlocProvider.value(value: productsBloc),
          ],
          child: MaterialApp(
            home: ProductsPage(),
          ),
        ),
      );
    }

    void _expectCustomAppBarExists() {
      expect(
        find.byWidgetPredicate(
          (widget) =>
              widget is CustomAppBar && widget.title == 'Promoted products',
        ),
        findsOneWidget,
      );
    }

    testWidgets(
      'should render ProductLoading widget on ProductsInitial state',
      (tester) async {
        when(productsBloc.state).thenReturn(const ProductsState.initial());

        await _renderProductsPage(tester);

        _expectCustomAppBarExists();
        expect(find.byType(ProductsLoading), findsOneWidget);
      },
    );

    testWidgets(
      'should render ProductsListView widget on ProductsLoadSuccess state',
      (tester) async {
        when(productsBloc.state).thenReturn(
          ProductsState.loadSuccess(
            products: <Product>[].build(),
            total: 0,
          ),
        );

        await _renderProductsPage(tester);

        _expectCustomAppBarExists();
        expect(find.byType(ProductsListView), findsOneWidget);
      },
    );

    testWidgets(
      'should render ProductsError widget on ProductsLoadFailure state',
      (tester) async {
        when(productsBloc.state).thenReturn(const ProductsState.loadFailure());

        await _renderProductsPage(tester);

        _expectCustomAppBarExists();
        expect(find.byType(ProductsError), findsOneWidget);
      },
    );
  });
}
