import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:shopping_app_prototype/modules/cart/bloc/cart_bloc.dart';
import 'package:shopping_app_prototype/widgets/widgets.dart';

class MockCartBloc extends MockBloc<CartState> implements CartBloc {}

void main() {
  group('CustomAppBar', () {
    CartBloc bloc;

    setUp(() {
      bloc = MockCartBloc();
      when(bloc.state).thenReturn(CartState.initial());
    });

    tearDown(() {
      bloc.close();
    });

    testWidgets(
      'should render custom AppBar',
      (tester) async {
        const title = 'Lorem Ipsum';

        await tester.pumpWidget(
          BlocProvider.value(
            value: bloc,
            child: MaterialApp(
              home: Scaffold(
                appBar: CustomAppBar(title: title),
                body: Container(),
              ),
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
        expect(find.byType(ShoppingCartButton), findsOneWidget);
      },
    );

    testWidgets(
      'should hide ShoppingCartButton when showShoppingCartButton flag is false',
      (tester) async {
        const title = 'Lorem Ipsum';

        await tester.pumpWidget(
          BlocProvider.value(
            value: bloc,
            child: MaterialApp(
              home: Scaffold(
                appBar: CustomAppBar(
                  title: title,
                  showShoppingCartButton: false,
                ),
                body: Container(),
              ),
            ),
          ),
        );

        expect(find.byType(ShoppingCartButton), findsNothing);
      },
    );
  });
}
