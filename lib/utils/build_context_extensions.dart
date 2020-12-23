import 'package:flutter/widgets.dart';

extension BuildContextExtensions on BuildContext {
  double get screenHeight => MediaQuery.of(this).size.height;
  double get screenWidth => MediaQuery.of(this).size.width;
}
