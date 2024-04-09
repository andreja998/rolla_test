import 'package:flutter/material.dart';

class AppTheme {
  /// Default constructor for Example [ThemeData]
  AppTheme(this._brightness);

  final Brightness _brightness;

  /// Exposes theme data to MaterialApp
  ThemeData get themeData {
    // switch (F.appFlavor) {
    //   case Flavor.development:
    return ThemeData(brightness: _brightness).copyWith(
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.purple,
        brightness: Brightness.dark,
      ),
      useMaterial3: true,
    );
    // case Flavor.production:
    //   return ThemeData(brightness: _brightness).copyWith(
    //     colorScheme: _colorScheme(Colors.blue),
    //     useMaterial3: true,
    //   );
    // default:
    //   return ThemeData(brightness: _brightness).copyWith(
    //     colorScheme: _colorScheme(Colors.red),
    //     useMaterial3: true,
    //   );
  }
}
