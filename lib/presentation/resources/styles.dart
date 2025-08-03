import 'package:flutter/material.dart';
import 'package:technofit/presentation/presentation.dart';
import 'package:technofit/utils/helper/constant.dart';

ThemeData themeLight(BuildContext context) {
  return ThemeData(
    fontFamily: Constants.get.fontFamily,
    primaryColor: Palette.primary,
    disabledColor: Palette.disable,
    hintColor: Palette.hint,
    cardColor: Palette.offWhite,
    scaffoldBackgroundColor: Palette.background,
    textTheme: TextTheme(
      displayLarge: TextStyles.h1,
      displayMedium: TextStyles.h2,
      displaySmall: TextStyles.h3,
      headlineLarge: TextStyles.h4,
      headlineMedium: TextStyles.h5,
      headlineSmall: TextStyles.h6,
      titleLarge: TextStyles.subtitle1,
      titleMedium: TextStyles.subtitle2,
      bodyLarge: TextStyles.body1,
      bodyMedium: TextStyles.body2,
      bodySmall: TextStyles.caption,
      labelLarge: TextStyles.button,
      labelSmall: TextStyles.overline,
    ),
    appBarTheme: const AppBarTheme().copyWith(
      color: Palette.white,
      iconTheme: const IconThemeData(color: Palette.black),
    ),
    brightness: Brightness.light,
    buttonTheme: const ButtonThemeData().copyWith(
      colorScheme:
          const ColorScheme.light().copyWith(background: Palette.primaryLight),
    ),
    iconTheme: const IconThemeData(color: Palette.black),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    canvasColor: Palette.white, colorScheme: const ColorScheme.light().copyWith(primary: Palette.primary).copyWith(background: Palette.background),
  );
}

ThemeData themeDark(BuildContext context) {
  return ThemeData(
    fontFamily: Constants.get.fontFamily,
    primaryColor: Palette.primary,
    hintColor: Palette.white.withOpacity(0.75),
    colorScheme: const ColorScheme.dark().copyWith(primary: Palette.primary),
    textTheme: TextTheme(
      displayLarge: TextStyles.h1.copyWith(color: Palette.white),
      displayMedium: TextStyles.h2.copyWith(color: Palette.white),
      displaySmall: TextStyles.h3.copyWith(color: Palette.white),
      headlineLarge: TextStyles.h4.copyWith(color: Palette.white),
      headlineMedium: TextStyles.h5.copyWith(color: Palette.white),
      headlineSmall: TextStyles.h6.copyWith(color: Palette.white),
      titleLarge: TextStyles.subtitle1.copyWith(color: Palette.white),
      titleMedium: TextStyles.subtitle2.copyWith(color: Palette.white),
      bodyLarge: TextStyles.body1.copyWith(color: Palette.white),
      bodyMedium: TextStyles.body2.copyWith(color: Palette.white),
      bodySmall: TextStyles.caption.copyWith(color: Palette.white),
      labelLarge: TextStyles.button.copyWith(color: Palette.white),
      labelSmall: TextStyles.overline.copyWith(color: Palette.white),
      // Optionally add labelMedium, titleSmall, etc. if you have custom styles
    ),
    appBarTheme: const AppBarTheme().copyWith(
      iconTheme: const IconThemeData(color: Palette.white),
      color: Palette.primary,
    ),
    brightness: Brightness.dark,
    buttonTheme: const ButtonThemeData().copyWith(
      colorScheme:
      const ColorScheme.dark().copyWith(background: Palette.primary),
    ),
    iconTheme: const IconThemeData(color: Palette.white),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    cardColor: Palette.darkCard,
    canvasColor: Palette.darkBackground,
  );
}

class BoxDecorations {
  BoxDecorations._();

  static BoxDecoration dialogAlt = const BoxDecoration(
    color: Palette.white,
    borderRadius: BorderRadius.all(Radius.circular(Dimens.cornerRadius)),
    boxShadow: [BoxShadows.dialogAlt],
  );
}

class BoxShadows {
  BoxShadows._();

  static const BoxShadow dialogAlt = BoxShadow(
    color: Palette.black25,
    offset: Offset(0, 4),
    blurRadius: 16.0,
  );
}

class TextStyles {
  TextStyles._();

  // static const _bold = FontWeight.w700;
  static const _semiBold = FontWeight.w600;
  static const _medium = FontWeight.w500;
  static const _regular = FontWeight.w400;
  static const _light = FontWeight.w300;

  static TextStyle h1 = TextStyle(
    fontSize: Dimens.h1,
    fontWeight: _semiBold,
    decoration: TextDecoration.none,
    color: Palette.text,
  );

  static TextStyle h2 = TextStyle(
    fontSize: Dimens.h2,
    fontWeight: _semiBold,
    decoration: TextDecoration.none,
    color: Palette.text,
  );

  static TextStyle h3 = TextStyle(
    fontSize: Dimens.h3,
    fontWeight: _semiBold,
    decoration: TextDecoration.none,
    color: Palette.text,
  );

  static TextStyle h4 = TextStyle(
    fontSize: Dimens.h4,
    fontWeight: _semiBold,
    decoration: TextDecoration.none,
    color: Palette.text,
  );

  static TextStyle h5 = TextStyle(
    fontSize: Dimens.h5,
    fontWeight: _semiBold,
    decoration: TextDecoration.none,
    color: Palette.text,
  );

  static TextStyle h6 = TextStyle(
    fontSize: Dimens.h6,
    fontWeight: _medium,
    decoration: TextDecoration.none,
    color: Palette.text,
  );

  static TextStyle body1 = TextStyle(
    fontSize: Dimens.body1,
    fontWeight: _light,
    decoration: TextDecoration.none,
    color: Palette.text,
  );

  static TextStyle body2 = TextStyle(
    fontSize: Dimens.body2,
    fontWeight: _light,
    decoration: TextDecoration.none,
    color: Palette.text,
  );

  static TextStyle subtitle1 = TextStyle(
    fontSize: Dimens.subtitle1,
    fontWeight: _semiBold,
    decoration: TextDecoration.none,
    color: Palette.text,
  );

  static TextStyle subtitle2 = TextStyle(
    fontSize: Dimens.subtitle2,
    fontWeight: _semiBold,
    decoration: TextDecoration.none,
    color: Palette.text,
  );

  static TextStyle button = TextStyle(
    fontSize: Dimens.button,
    fontWeight: FontWeight.w500,
    decoration: TextDecoration.none,
    color: Palette.text,
  );

  static TextStyle caption = TextStyle(
    fontSize: Dimens.caption,
    fontWeight: _regular,
    decoration: TextDecoration.none,
    color: Palette.text,
  );

  static TextStyle overline = TextStyle(
    fontSize: Dimens.overline,
    fontWeight: _regular,
    decoration: TextDecoration.none,
    color: Palette.text,
  );
}
