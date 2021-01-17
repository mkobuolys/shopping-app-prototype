import 'package:flutter/material.dart';

import 'package:shopping_app_prototype/constants/constants.dart';

class CircularLoader extends StatelessWidget {
  const CircularLoader();

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(LayoutConstants.paddingM),
      child: const CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation(Colors.black),
      ),
    );
  }
}
