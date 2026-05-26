import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // Primary Calming Palette
  static const Color roseClay = Color(0xFFD98F8F);
  static const Color peachGlow = Color(0xFFF3B58A);
  static const Color butterCream = Color(0xFFFFF4E6);
  static const Color lavenderMist = Color(0xFFB7A6E6);
  static const Color sageBreeze = Color(0xFF9DB8A5);
  static const Color skyPowder = Color(0xFFBFD7EA);
  static const Color cocoaInk = Color(0xFF3C2F2F);

  // Dark Mode Palette
  static const Color nightBackground = Color(0xFF241C24);
  static const Color nightSurface = Color(0xFF32263A);
  static const Color nightText = Color(0xFFF7EDE2);

  // Gradients
  static const LinearGradient morningGlow = LinearGradient(
    colors: [butterCream, peachGlow],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient calmEvening = LinearGradient(
    colors: [lavenderMist, roseClay],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient skyCalm = LinearGradient(
    colors: [skyPowder, butterCream],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient softWellness = LinearGradient(
    colors: [sageBreeze, butterCream],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
