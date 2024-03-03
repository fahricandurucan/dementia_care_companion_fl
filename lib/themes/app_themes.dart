import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: Colors.blue,
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.black),
      displayMedium: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black),
      bodyLarge: TextStyle(fontSize: 16.0, color: Colors.black),
      bodyMedium: TextStyle(fontSize: 14.0, color: Colors.grey),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(48),
        backgroundColor: Colors.blue,
        textStyle: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      titleTextStyle: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
    ),
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.green),
    // Diğer tema özellikleri buraya eklenebilir
  );

  static ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.blue,
    textTheme: TextTheme(
      displayLarge:
          const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.white),
      displayMedium:
          const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),
      bodyLarge: const TextStyle(fontSize: 16.0, color: Colors.white),
      bodyMedium: TextStyle(fontSize: 14.0, color: Colors.grey[300]),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(48),
        backgroundColor: Colors.blue,
        textStyle: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
      titleTextStyle: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey[300],
    ),
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.green),
    // Diğer tema özellikleri buraya eklenebilir
  );
}
