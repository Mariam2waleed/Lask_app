import 'package:flutter/material.dart';

// Easy Pay

// Main App Colors
const white = Colors.white;
const black = Colors.black;

class AppColors {}

// Light Theme Settings
class LightTheme {
  Color primary = const Color.fromRGBO(255, 255, 255, 1); // White
  Color base = const Color.fromRGBO(233, 238, 250, 1);
  Color primaryText = const Color.fromRGBO(35, 31, 32, 1);
  Color secondaryText = const Color.fromRGBO(109, 98, 101, 1);
  Color navBar = const Color.fromRGBO(252, 233, 238, 0.8);
}

// Dark Theme Settings
class DarkTheme {
  Color primary = const Color.fromRGBO(13, 13, 13, 1); // Black
  Color base = const Color.fromRGBO(26, 26, 26, 1);
  Color primaryText = const Color.fromRGBO(224, 220, 221, 1);
  Color secondaryText = const Color.fromRGBO(155, 138, 143, 1);
  Color navBar = const Color.fromRGBO(28, 28, 28, 0.8);
}
