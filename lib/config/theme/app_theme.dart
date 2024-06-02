import 'package:flutter/material.dart';

class AppTheme {
  final bool isDarkMode;

  static const _colorDefaultScheme = ColorScheme(
    brightness: Brightness.light,
    surfaceTint: Color.fromARGB(255, 216, 216, 216),
    error: Colors.red,
    onError: Colors.redAccent,
    primary: Color(0xff5ce1e6),
    onPrimary: Colors.white,
    secondary: Color(0xff8c52ff),
    onSecondary: Colors.white,
    tertiary: Color(0xFF273a89),
    surface: Colors.blueAccent,
    onSurface: Color(0xff94d793),
    onSurfaceVariant: Color(0xff0092e4),
  );

  AppTheme({this.isDarkMode = false});

  ThemeData getTheme() {
    var baseTheme = ThemeData();

    return ThemeData(
      useMaterial3: true,
      fontFamily: 'Inter',
      colorScheme: _colorDefaultScheme,
      textTheme: baseTheme.textTheme.copyWith(
        titleLarge: const TextStyle(
          color: Colors.white,
        ),
        labelLarge: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),
        displayMedium: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
        )
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: _colorDefaultScheme.secondary
      ),
      drawerTheme: DrawerThemeData(
        backgroundColor: _colorDefaultScheme.tertiary
      )
    );
  }

  AppTheme copyWith({
    final bool? isDarkMode
  }) => AppTheme(isDarkMode: isDarkMode ?? this.isDarkMode);
}
