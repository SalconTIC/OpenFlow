import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FlutterFlowTheme {
  static FlutterFlowTheme of(BuildContext context) => FlutterFlowTheme();

  static Future initialize() async => {};

  // Colores básicos (puedes cambiarlos por los de tu marca en FF)
  Color primary = const Color(0xFF4B39EF);
  Color secondary = const Color(0xFF39D2C0);
  Color tertiary = const Color(0xFFEE8B60);
  Color alternate = const Color(0xFFE0E3E7);
  Color primaryText = const Color(0xFF14181B);
  Color secondaryText = const Color(0xFF57636C);
  Color primaryBackground = const Color(0xFFF1F4F8);
  Color secondaryBackground = const Color(0xFFFFFFFF);
  
  // Tipografías que usa FlutterFlow
  TextStyle get displayLarge => GoogleFonts.outfit(fontSize: 64, color: primaryText, fontWeight: FontWeight.normal);
  TextStyle get displayMedium => GoogleFonts.outfit(fontSize: 44, color: primaryText, fontWeight: FontWeight.normal);
  TextStyle get displaySmall => GoogleFonts.outfit(fontSize: 36, color: primaryText, fontWeight: FontWeight.normal);
  TextStyle get headlineLarge => GoogleFonts.outfit(fontSize: 32, color: primaryText, fontWeight: FontWeight.normal);
  TextStyle get headlineMedium => GoogleFonts.outfit(fontSize: 24, color: primaryText, fontWeight: FontWeight.normal);
  TextStyle get headlineSmall => GoogleFonts.outfit(fontSize: 20, color: primaryText, fontWeight: FontWeight.normal);
  TextStyle get titleLarge => GoogleFonts.outfit(fontSize: 22, color: primaryText, fontWeight: FontWeight.w500);
  TextStyle get titleMedium => GoogleFonts.outfit(fontSize: 18, color: primaryText, fontWeight: FontWeight.w500);
  TextStyle get titleSmall => GoogleFonts.outfit(fontSize: 16, color: primaryText, fontWeight: FontWeight.w500);
  TextStyle get bodyLarge => GoogleFonts.outfit(fontSize: 16, color: primaryText, fontWeight: FontWeight.normal);
  TextStyle get bodyMedium => GoogleFonts.outfit(fontSize: 14, color: primaryText, fontWeight: FontWeight.normal);
  TextStyle get bodySmall => GoogleFonts.outfit(fontSize: 12, color: primaryText, fontWeight: FontWeight.normal);
  TextStyle get labelLarge => GoogleFonts.outfit(fontSize: 16, color: secondaryText, fontWeight: FontWeight.normal);
  TextStyle get labelMedium => GoogleFonts.outfit(fontSize: 14, color: secondaryText, fontWeight: FontWeight.normal);
  TextStyle get labelSmall => GoogleFonts.outfit(fontSize: 12, color: secondaryText, fontWeight: FontWeight.normal);

}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    bool? useGoogleFonts = true,
    TextDecoration? decoration,
    double? lineHeight,
    double? letterSpacing,
    TextStyle? font, 
  }) {
    if (font != null) {
      fontFamily = font.fontFamily;
    }

    // --- AQUÍ ESTÁ EL ARREGLO ---
    // Limpiamos el nombre: quitamos lo que haya después de un guion bajo 
    // y añadimos espacios entre mayúsculas si es necesario.
    if (fontFamily != null && useGoogleFonts!) {
      // 1. Quitar sufijos tipo _regular, _bold, etc.
      fontFamily = fontFamily.split('_').first;
      
      // 2. Si el nombre viene pegado (InterTight), Google Fonts suele preferir (Inter Tight)
      // Este regex añade un espacio antes de cada mayúscula (excepto la primera)
      fontFamily = fontFamily.replaceAllMapped(
        RegExp(r'(?<=[a-z])(?=[A-Z])'),
        (match) => ' ',
      );
    }

    return useGoogleFonts! && fontFamily != null
        ? GoogleFonts.getFont(
            fontFamily,
            color: color ?? this.color,
            fontSize: fontSize ?? this.fontSize,
            fontWeight: fontWeight ?? this.fontWeight,
            fontStyle: fontStyle ?? this.fontStyle,
            decoration: decoration ?? this.decoration,
            height: lineHeight,
            letterSpacing: letterSpacing ?? this.letterSpacing,
          )
        : copyWith(
            fontFamily: fontFamily,
            color: color,
            fontSize: fontSize,
            fontWeight: fontWeight,
            fontStyle: fontStyle,
            decoration: decoration,
            height: lineHeight,
            letterSpacing: letterSpacing,
          );
  }
}