import 'package:flutter/material.dart';

class AppThemes {
  static ThemeData mainTheme(BuildContext context) {
    return ThemeData(
        useMaterial3: true,
        fontFamily: 'Dosis',
        secondaryHeaderColor: const Color.fromRGBO(167, 167, 167, 1),
        primaryColor: const Color.fromRGBO(48, 48, 48, 1),
        inputDecorationTheme: InputDecorationTheme(
            isDense: true,
            focusColor: const Color.fromRGBO(48, 48, 48, 1),
            prefixIconColor: const Color.fromRGBO(48, 48, 48, 1),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(60),
                borderSide: const BorderSide(
                    width: 1, color: Color.fromRGBO(48, 48, 48, 1))),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(60))),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(48, 48, 48, 1),
                foregroundColor: Colors.white)));
  }
}
