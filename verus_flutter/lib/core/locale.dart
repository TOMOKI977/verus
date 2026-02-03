import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class AppLocale {
  // Idiomas soportados
  static const supportedLocales = [
    Locale('en', 'US'), // Inglés
    Locale('es', 'ES'), // Español
  ];

  // Delegados de localización
  static const localizationsDelegates = [
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ];
}
