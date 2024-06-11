import 'package:flutter_localization/flutter_localization.dart';

const List<MapLocale> LOCALES = [
  MapLocale("en", LocaleData.EN),
  MapLocale("fr", LocaleData.FR),
  MapLocale("es", LocaleData.ES),
  MapLocale("zh", LocaleData.ZH),
  MapLocale("ja", LocaleData.JA),
  MapLocale("ru", LocaleData.RU),
];

mixin LocaleData {
  static const String title = 'title';
  static const String body = 'body';

  static const Map<String, dynamic> EN = {
    'title': 'Localization',
    'body': 'Welcome to this localized Flutter application %a',
  };

  static const Map<String, dynamic> FR = {
    'title': 'Localisation',
    'body': 'Bienvenue dans cette application Flutter localisée %a',
  };

  static const Map<String, dynamic> ES = {
    'title': 'Localización',
    'body': 'Bienvenido a esta aplicación Flutter localizada %a',
  };

  static const Map<String, dynamic> ZH = {
    'title': '本地化',
    'body': '欢迎使用此本地化 Flutter 应用 %a',
  };

  static const Map<String, dynamic> JA = {
    'title': 'ローカライゼーション',
    'body': 'このローカライズされた Flutter アプリケーションへようこそ %a',
  };

  static const Map<String, dynamic> RU = {
    'title': 'Локализация',
    'body': 'Добро пожаловать в это локализованное приложение Flutter %a',
  };
}
