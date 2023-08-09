import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: const Color(0xFFB7935F),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(color: Colors.black),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xFFB7935F),
      type: BottomNavigationBarType.fixed,
      selectedIconTheme: IconThemeData(
        color: Colors.black,
        size: 34,
      ),
      selectedLabelStyle: TextStyle(
        color: Colors.black,
        fontSize: 20,
      ),
      showUnselectedLabels: false,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
      unselectedIconTheme: IconThemeData(
        color: Colors.white,
        size: 26,
      ),
      unselectedLabelStyle: TextStyle(
        color: Colors.white,
        fontSize: 16,
      ),
    ),
  );
  static ThemeData darkTheme = ThemeData(
    primaryColor: const Color(0xFFB7935F),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xFFB7935F),
      type: BottomNavigationBarType.fixed,
      selectedIconTheme: IconThemeData(
        color: Colors.black,
        size: 34,
      ),
      selectedLabelStyle: TextStyle(
        color: Colors.black,
        fontSize: 20,
      ),
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
      unselectedIconTheme: IconThemeData(
        color: Colors.white,
        size: 26,
      ),
      unselectedLabelStyle: TextStyle(
        color: Colors.white,
        fontSize: 16,
      ),
    ),
  );
}
