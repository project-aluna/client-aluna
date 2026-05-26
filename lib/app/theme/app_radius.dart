import 'package:flutter/material.dart';

class AppRadius {
  AppRadius._();

  static const double smallValue = 12.0;
  static const double inputValue = 16.0;
  static const double cardValue = 24.0;
  static const double modalValue = 32.0;
  static const double pillValue = 999.0;

  static const BorderRadius small = BorderRadius.all(Radius.circular(smallValue));
  static const BorderRadius input = BorderRadius.all(Radius.circular(inputValue));
  static const BorderRadius card = BorderRadius.all(Radius.circular(cardValue));
  static const BorderRadius modal = BorderRadius.all(Radius.circular(modalValue));
  static const BorderRadius pill = BorderRadius.all(Radius.circular(pillValue));
}
