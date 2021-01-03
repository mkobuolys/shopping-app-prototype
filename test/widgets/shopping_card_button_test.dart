import 'package:badges/badges.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:shopping_app_prototype/constants/constants.dart';
import 'package:shopping_app_prototype/modules/cart/cart.dart';
import 'package:shopping_app_prototype/widgets/shopping_card_button.dart';

class MockCartBloc extends MockBloc<CartState> implements CartBloc {}

class MockCartItem extends Mock implements CartItem {}

void main() {
  group('ShoppingCardButton', () {
    CartBloc bloc;
    final mockCartItems = List.filled(3, MockCartItem()).build();

    setUp(() {
      bloc = MockCartBloc();
      when(bloc.state).thenReturn(CartState(items: mockCartItems));
    });

    tearDown(() {
      bloc.close();
    });

    testWidgets(
      'should render shopping cart button',
      (tester) async {
        await tester.pumpWidget(
          BlocProvider.value(
            value: bloc,
            child: MaterialApp(
              home: Scaffold(
                body: ShoppingCardButton(),
              ),
            ),
          ),
        );

        expect(
          find.widgetWithIcon(IconButton, Icons.shopping_cart),
          findsOneWidget,
        );
      },
    );

    testWidgets(
      "should render shopping cart button's badge correctly",
      (tester) async {
        await tester.pumpWidget(
          BlocProvider.value(
            value: bloc,
            child: MaterialApp(
              home: Scaffold(
                body: ShoppingCardButton(),
              ),
            ),
          ),
        );

        expect(
          find.byWidgetPredicate(
            (widget) =>
                widget is Badge &&
                widget.animationType == BadgeAnimationType.scale &&
                widget.position is BadgePosition &&
                widget.position.top == LayoutConstants.spaceS &&
                widget.position.end == LayoutConstants.spaceS,
          ),
          findsOneWidget,
        );
        expect(find.text('${mockCartItems.length}'), findsOneWidget);
      },
    );
  });
}
