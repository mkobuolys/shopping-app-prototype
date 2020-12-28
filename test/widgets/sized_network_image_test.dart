import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:shopping_app_prototype/widgets/sized_network_image.dart';

class MockBaseCacheManager extends Mock implements BaseCacheManager {}

void main() {
  group('SizedNetworkImage', () {
    MockBaseCacheManager cacheManager;

    setUp(() {
      cacheManager = MockBaseCacheManager();
    });

    tearDown(() {
      cacheManager.dispose();
    });

    testWidgets(
      'should render sized CachedNetworkImage',
      (tester) async {
        const imageUrl = 'image/url';
        const imageWidth = 100.0;

        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: SizedNetworkImage(
                cacheManager: cacheManager,
                imageUrl: imageUrl,
                imageWidth: imageWidth,
              ),
            ),
          ),
        );

        expect(
          find.byWidgetPredicate(
            (widget) => widget is SizedBox && widget.width == imageWidth,
          ),
          findsOneWidget,
        );
        expect(
          find.byWidgetPredicate(
            (widget) =>
                widget is CachedNetworkImage && widget.imageUrl == imageUrl,
          ),
          findsOneWidget,
        );
      },
    );
  });
}
