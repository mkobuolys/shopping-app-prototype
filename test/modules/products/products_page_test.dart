import 'package:bloc_test/bloc_test.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:shopping_app_prototype/modules/products/products.dart';
import 'package:shopping_app_prototype/widgets/custom_app_bar.dart';

class MockProductsBloc extends MockBloc<ProductsState> implements ProductsBloc {
}

void main() {
  group('ProductsPage', () {
    ProductsBloc bloc;

    setUp(() {
      bloc = MockProductsBloc();
    });

    tearDown(() {
      bloc.close();
    });

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
        when(bloc.state).thenReturn(const ProductsState.initial());

        await tester.pumpWidget(
          BlocProvider.value(
            value: bloc,
            child: MaterialApp(
              home: ProductsPage(),
            ),
          ),
        );

        _expectCustomAppBarExists();
        expect(find.byType(ProductsLoading), findsOneWidget);
      },
    );

    testWidgets(
      'should render ProductsListView widget on ProductsLoadSuccess state',
      (tester) async {
        when(bloc.state).thenReturn(
          ProductsState.loadSuccess(
            products: BuiltList<Product>([]),
            total: 0,
          ),
        );

        await tester.pumpWidget(
          BlocProvider.value(
            value: bloc,
            child: MaterialApp(
              home: ProductsPage(),
            ),
          ),
        );

        _expectCustomAppBarExists();
        expect(find.byType(ProductsListView), findsOneWidget);
      },
    );

    testWidgets(
      'should render ProductsError widget on ProductsLoadFailure state',
      (tester) async {
        when(bloc.state).thenReturn(const ProductsState.loadFailure());

        await tester.pumpWidget(
          BlocProvider.value(
            value: bloc,
            child: MaterialApp(
              home: ProductsPage(),
            ),
          ),
        );

        _expectCustomAppBarExists();
        expect(find.byType(ProductsError), findsOneWidget);
      },
    );
  });
}
