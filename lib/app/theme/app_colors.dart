import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // Primary Calming Palette (design.md Section 6)
  static const Color softCloud = Color(0xFFF8F4F1);       // 6.1 Soft Cloud — main bg
  static const Color roseClay = Color(0xFFC98C8C);         // 6.2 Dusty Rose — CTA, active
  static const Color peachGlow = Color(0xFFE8B38B);        // 6.3 Soft Apricot — morning
  static const Color butterCream = Color(0xFFF8F4F1);      // alias for softCloud
  static const Color lavenderMist = Color(0xFFA79BCF);     // 6.4 Mist Lavender — reflection
  static const Color sageBreeze = Color(0xFF9CAF9D);       // 6.5 Muted Sage — completed
  static const Color skyPowder = Color(0xFFC7D8E8);        // 6.6 Powder Blue — mood
  static const Color cocoaInk = Color(0xFF352A2A);         // 6.7 Cocoa Ink — text

  // Dark Mode Palette (design.md Section 21)
  static const Color nightBackground = Color(0xFF221B22);
  static const Color nightSurface = Color(0xFF302633);
  static const Color nightText = Color(0xFFF6EFE8);

  // Gradient System (design.md Section 8)
  // 8.1 Morning Calm — soft sunrise
  static const LinearGradient morningCalm = LinearGradient(
    colors: [softCloud, peachGlow],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  // 8.2 Evening Reset — night routine calmness
  static const LinearGradient eveningReset = LinearGradient(
    colors: [lavenderMist, roseClay],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  // 8.3 Emotional Clarity — airy emotional space
  static const LinearGradient emotionalClarity = LinearGradient(
    colors: [skyPowder, softCloud],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  // 8.4 Grounding Calm — restorative calm
  static const LinearGradient groundingCalm = LinearGradient(
    colors: [sageBreeze, softCloud],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  // Legacy aliases (kept for backward compatibility)
  static const LinearGradient morningGlow = morningCalm;
  static const LinearGradient calmEvening = eveningReset;
  static const LinearGradient skyCalm = emotionalClarity;
  static const LinearGradient softWellness = groundingCalm;
}
