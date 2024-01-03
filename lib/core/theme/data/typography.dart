part of '../theme.dart';

class ManropeTextStyle extends TextStyle {
  const ManropeTextStyle({
    super.color = const Color(0xFF3C3C3C),
    super.backgroundColor,
    super.fontSize,
    super.fontWeight,
    super.fontStyle,
    super.letterSpacing = 0,
    super.wordSpacing,
    super.textBaseline,
    super.height,
    super.leadingDistribution,
    super.locale,
    super.foreground,
    super.background,
    super.shadows,
    super.fontFeatures,
    super.decoration = TextDecoration.none,
    super.decorationColor,
    super.decorationStyle,
    super.decorationThickness,
    super.debugLabel = 'Manrope',
    super.overflow,
    super.inherit = true,
  }) : super(
          fontFamily: 'Manrope',
        );
}

const textTheme = TextTheme(
  displayLarge: ManropeTextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w800,
  ),
  displayMedium: ManropeTextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w800,
  ),
  displaySmall: ManropeTextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w700,
  ),
  titleLarge: ManropeTextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
  ),
  titleMedium: ManropeTextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w700,
  ),
  titleSmall: ManropeTextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
  ),
  headlineLarge: ManropeTextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
  ),
  headlineMedium: ManropeTextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  ),
  headlineSmall: ManropeTextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
  ),
  bodyLarge: ManropeTextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
  ),
  bodyMedium: ManropeTextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    height: 1.5,
  ),
  bodySmall: ManropeTextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
  ),
  labelLarge: ManropeTextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  ),
  labelMedium: ManropeTextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
  ),
  labelSmall: ManropeTextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w400,
  ),
);
