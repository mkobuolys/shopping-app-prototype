import 'package:flutter/material.dart';

final ThemeData theme = ThemeData(
  accentColor: Colors.black,
  appBarTheme: _appBarTheme,
  pageTransitionsTheme: _pageTransitionsTheme,
  scaffoldBackgroundColor: Colors.white.withOpacity(0.95),
  textTheme: _textTheme,
  typography: Typography.material2018(),
  visualDensity: VisualDensity.adaptivePlatformDensity,
);

final AppBarTheme _appBarTheme = AppBarTheme(
  color: Colors.white,
  elevation: 0.0,
  iconTheme: IconThemeData(color: Colors.black),
  textTheme: TextTheme(
    headline6: _TextStyles.headline6.copyWith(color: Colors.black87),
  ),
);

const PageTransitionsTheme _pageTransitionsTheme = PageTransitionsTheme(
  builders: <TargetPlatform, PageTransitionsBuilder>{
    TargetPlatform.android: ZoomPageTransitionsBuilder(),
  },
);

final TextTheme _textTheme = TextTheme(
  headline4: _TextStyles.headline4,
  headline5: _TextStyles.headline5,
  headline6: _TextStyles.headline6,
  subtitle1: _TextStyles.subtitle1,
  subtitle2: _TextStyles.subtitle2,
  bodyText1: _TextStyles.bodyText1,
  bodyText2: _TextStyles.bodyText2,
);

class _TextStyles {
  static final TextStyle headline4 = TextStyle(
    fontFamily: 'RobotoMedium',
    fontSize: 34.0,
    color: Colors.black.withOpacity(0.75),
  );
  static final TextStyle headline5 = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 24.0,
    color: Colors.black.withOpacity(0.65),
  );
  static final TextStyle headline6 = TextStyle(
    fontFamily: 'RobotoMedium',
    fontSize: 20.0,
    color: Colors.black.withOpacity(0.65),
  );
  static final TextStyle subtitle1 = TextStyle(
    fontFamily: 'RobotoMedium',
    fontSize: 16.0,
    color: Colors.black.withOpacity(0.65),
  );
  static final TextStyle subtitle2 = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 16.0,
    color: Colors.black.withOpacity(0.65),
  );
  static final TextStyle bodyText1 = TextStyle(
    fontFamily: 'RobotoMedium',
    fontSize: 14.0,
    color: Colors.black.withOpacity(0.65),
  );
  static final TextStyle bodyText2 = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 14.0,
    color: Colors.black.withOpacity(0.65),
  );
}
