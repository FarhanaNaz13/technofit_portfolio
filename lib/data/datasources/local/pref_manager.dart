import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum ActiveTheme {
  light(
    ThemeMode.light,
    Icons.wb_sunny,
  ),
  dark(ThemeMode.dark, Icons.brightness_2),
  system(ThemeMode.system, Icons.brightness_auto_rounded);

  final ThemeMode mode;
  final IconData icon;

  const ActiveTheme(this.mode, this.icon);
}

class PrefManager {
  String kIsLogin = "isLogin";
  String kToken = "token";
  String kText = "text";
  String kColor = "color";
  String kIcon = "icon";
  String kUser = "user";
  String kFCM = "fcm";
  String kLanguage = "language";
  String kLocale = "locale";
  String kTheme = "theme";


  SharedPreferences preferences;

  PrefManager(this.preferences);

  set isLogin(bool value) => preferences.setBool(kIsLogin, value);

  bool get isLogin => preferences.getBool(kIsLogin) ?? false;

  set token(String? value) => preferences.setString(kToken, value ?? "");

  String? get token => preferences.getString(kToken);

  set fcmToken(String? value) => preferences.setString(kFCM, value ?? "");

  String? get fcmToken => preferences.getString(kFCM);

  set user(String? value) => preferences.setString(kUser, value ?? "");

  String? get user => preferences.getString(kUser);

  set text(String? value) => preferences.setString(kText, value ?? "");

  String get text => preferences.getString(kText) ?? "";

  set color(String? value) => preferences.setString(kColor, value ?? "");

  String? get color => preferences.getString(kColor);

  set icon(String? value) => preferences.setString(kIcon, value ?? "");

  String? get icon => preferences.getString(kIcon);

  set locale(String? value) => preferences.setString(kLocale, value ?? "en");

  String get locale => preferences.getString(kLocale) ?? "en";

  set theme(String? value) =>
      preferences.setString(kTheme, value ?? ActiveTheme.system.name);

  String get theme =>
      preferences.getString(kTheme) ?? ActiveTheme.system.name;


  void logout() => preferences.clear();
}
