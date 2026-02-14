import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const Color white = Color(0xFFFFFFFF);
  static const Color bluePrimary = Color(0xFF2563EB);
  static const Color blueSecondary = Color(0xFF0025AE);
  static const Color darkGray = Color(0xFF262626);

  static const Color goldenOrange = Color(0xFFF59E0B);
  static const Color brandy = Color(0xFF722300);
  static const Color powderPetal = Color(0xFFFFE7D3);
  static const Color cayenneRed = Color(0xFFEA580C);
  static const Color oxblood = Color(0xFF920000);

  static const Color greenAccent = Color(0xFF22C55E);
  static const Color purpleAccent = Color(0xFF8B5CF6);
  static const Color tealAccent = Color(0xFF14B8A6);

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: bluePrimary,
    scaffoldBackgroundColor: white,
    colorScheme: const ColorScheme.light(
      primary: bluePrimary,
      secondary: blueSecondary,
      surface: white,
      onPrimary: white,
      onSecondary: white,
      onSurface: darkGray,
    ),
    textTheme: TextTheme(
      // Extra large (Hero headline)
      headlineLarge: GoogleFonts.spaceMono(
        fontSize: 84,
        fontWeight: FontWeight.bold,
        color: darkGray,
      ),
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
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: bluePrimary,
        foregroundColor: white,
        textStyle: GoogleFonts.spaceGrotesk(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        // padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: bluePrimary,
        textStyle: GoogleFonts.spaceGrotesk(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        side: const BorderSide(color: bluePrimary),
        // padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: AppTheme.darkGray.withOpacity(0.4), // borde tenue
          width: 1,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: AppTheme.bluePrimary, width: 2),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: AppTheme.cayenneRed, width: 2),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      focusedErrorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: AppTheme.oxblood, width: 2),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      labelStyle: GoogleFonts.spaceGrotesk(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: AppTheme.darkGray,
      ),
      hintStyle: GoogleFonts.spaceGrotesk(
        fontSize: 13,
        fontWeight: FontWeight.w400,
        color: AppTheme.darkGray.withOpacity(
          0.6,
        ), // estilo global para ejemplos
      ),
      errorStyle: GoogleFonts.spaceGrotesk(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: AppTheme.cayenneRed,
      ),
      helperStyle: GoogleFonts.spaceGrotesk(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: AppTheme.darkGray,
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    ),
    dropdownMenuTheme: DropdownMenuThemeData(
      textStyle: GoogleFonts.spaceGrotesk(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppTheme.darkGray,
      ),
      menuStyle: MenuStyle(
        backgroundColor: MaterialStateProperty.all(AppTheme.white),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        elevation: MaterialStateProperty.all(4),
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
      surface: darkGray,
      onPrimary: white,
      onSecondary: white,
      onSurface: white,
    ),
    textTheme: TextTheme(
      headlineLarge: GoogleFonts.spaceMono(
        fontSize: 84,
        fontWeight: FontWeight.bold,
        color: white,
      ),
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
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: blueSecondary,
        foregroundColor: white,
        textStyle: GoogleFonts.spaceGrotesk(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        // padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppTheme.white, // texto blanco
        textStyle: GoogleFonts.spaceGrotesk(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: AppTheme.white, // tipografía blanca
        ),
        side: const BorderSide(color: AppTheme.white), // borde blanco
        // padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: AppTheme.white.withOpacity(
            0.4,
          ), // borde claro sobre fondo oscuro
          width: 1,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: AppTheme.bluePrimary, width: 2),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: AppTheme.cayenneRed, width: 2),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      focusedErrorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: AppTheme.oxblood, width: 2),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      labelStyle: GoogleFonts.spaceGrotesk(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: AppTheme.white,
      ),
      hintStyle: GoogleFonts.spaceGrotesk(
        fontSize: 13,
        fontWeight: FontWeight.w400,
        color: AppTheme.white.withOpacity(0.6), // hint claro
      ),
      errorStyle: GoogleFonts.spaceGrotesk(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: AppTheme.cayenneRed,
      ),
      helperStyle: GoogleFonts.spaceGrotesk(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: AppTheme.white.withOpacity(0.7),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    ),
    dropdownMenuTheme: DropdownMenuThemeData(
      textStyle: GoogleFonts.spaceGrotesk(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppTheme.white,
      ),
      menuStyle: MenuStyle(
        backgroundColor: MaterialStateProperty.all(AppTheme.darkGray),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        elevation: MaterialStateProperty.all(4),
      ),
    ),
  );
}
