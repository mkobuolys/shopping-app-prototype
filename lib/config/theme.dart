import 'package:flutter/material.dart';

final ThemeData theme = ThemeData(
  primarySwatch: Colors.blue,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  appBarTheme: _appBarTheme,
);

final AppBarTheme _appBarTheme = AppBarTheme(
  color: Colors.white,
  elevation: 0.0,
  iconTheme: IconThemeData(color: Colors.black),
  textTheme: TextTheme(
    headline6: TextStyle(color: Colors.black87, fontSize: 18),
  ),
);
