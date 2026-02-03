import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const Color white = Color(0xFFFFFFFF);
  static const Color bluePrimary = Color(0xFF2563EB);
  static const Color blueSecondary = Color(0xFF0025AE);
  static const Color darkGray = Color(0xFF262626);

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: bluePrimary,
    scaffoldBackgroundColor: white,
    colorScheme: const ColorScheme.light(
      primary: bluePrimary,
      secondary: blueSecondary,
      background: white,
      onPrimary: white,
      onSecondary: white,
      onBackground: darkGray,
    ),
    textTheme: TextTheme(
      // H1
      displayLarge: GoogleFonts.spaceMono(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: darkGray,
      ),
      // H2
      displayMedium: GoogleFonts.spaceMono(
        fontSize: 28,
        fontWeight: FontWeight.w600,
        color: darkGray,
      ),
      // H3
      displaySmall: GoogleFonts.spaceMono(
        fontSize: 24,
        fontWeight: FontWeight.w500,
        color: darkGray,
      ),
      // H4
      headlineMedium: GoogleFonts.spaceMono(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: darkGray,
      ),
      // H5
      headlineSmall: GoogleFonts.spaceMono(
        fontSize: 18,
        fontWeight: FontWeight.w400,
        color: darkGray,
      ),
      // Body Large (lead paragraph)
      bodyLarge: GoogleFonts.spaceGrotesk(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: darkGray,
      ),
      // Body (regular paragraph)
      bodyMedium: GoogleFonts.spaceGrotesk(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: darkGray,
      ),
      // Body Small (secondary text)
      bodySmall: GoogleFonts.spaceGrotesk(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: darkGray,
      ),
      // Caption (fine print)
      labelSmall: GoogleFonts.spaceGrotesk(
        fontSize: 10,
        fontWeight: FontWeight.w300,
        color: darkGray,
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: blueSecondary,
    scaffoldBackgroundColor: darkGray,
    colorScheme: const ColorScheme.dark(
      primary: blueSecondary,
      secondary: bluePrimary,
      background: darkGray,
      onPrimary: white,
      onSecondary: white,
      onBackground: white,
    ),
    textTheme: TextTheme(
      displayLarge: GoogleFonts.spaceMono(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: white,
      ),
      displayMedium: GoogleFonts.spaceMono(
        fontSize: 28,
        fontWeight: FontWeight.w600,
        color: white,
      ),
      displaySmall: GoogleFonts.spaceMono(
        fontSize: 24,
        fontWeight: FontWeight.w500,
        color: white,
      ),
      headlineMedium: GoogleFonts.spaceMono(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: white,
      ),
      headlineSmall: GoogleFonts.spaceMono(
        fontSize: 18,
        fontWeight: FontWeight.w400,
        color: white,
      ),
      bodyLarge: GoogleFonts.spaceGrotesk(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: white,
      ),
      bodyMedium: GoogleFonts.spaceGrotesk(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: white,
      ),
      bodySmall: GoogleFonts.spaceGrotesk(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: white,
      ),
      labelSmall: GoogleFonts.spaceGrotesk(
        fontSize: 10,
        fontWeight: FontWeight.w300,
        color: white,
      ),
    ),
  );
}
