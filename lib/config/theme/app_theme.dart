import 'package:flutter/material.dart';

class AppTheme {
  final bool isDarkMode;

  static const _colorDefaultScheme = ColorScheme(
    background: Colors.white,
    onBackground: Color(0xFFD4D1D1),
    brightness: Brightness.light,
    surfaceTint: Color.fromARGB(255, 216, 216, 216),
    error: Colors.red,
    onError: Colors.redAccent,
    primary: Color(0xFF1d4ec2),
    onPrimary: Colors.white,
    secondary: Color(0xFF612ec8),
    onSecondary: Colors.white,
    tertiary: Color(0xFFA1C783),
    surface: Colors.blueAccent,
    onSurface: Color(0xFF999B9C),
    onSurfaceVariant: Color(0xFFC26363),
  );

  AppTheme({this.isDarkMode = false});

  ThemeData getTheme() {
    var baseTheme = ThemeData();

    return ThemeData(
      useMaterial3: true,
      fontFamily: 'Inter',
      colorScheme: _colorDefaultScheme,
      textTheme: baseTheme.textTheme.copyWith(
        labelLarge: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
        )
      )
    );
  }

  AppTheme copyWith({
    final bool? isDarkMode
  }) => AppTheme(isDarkMode: isDarkMode ?? this.isDarkMode);
}
