import 'package:flutter_localization/flutter_localization.dart';

// La liste des langues disponibles pour notre application.
const List<MapLocale> LOCALES = [
  MapLocale("en", LocaleData.EN),
  MapLocale("fr", LocaleData.FR),
  MapLocale("es", LocaleData.ES),
  MapLocale("zh", LocaleData.ZH),
  MapLocale("ja", LocaleData.JA),
  MapLocale("ru", LocaleData.RU),
];

// La classe qui contient les données de localisation pour chaque langue.
mixin LocaleData {
  // Les clés pour accéder aux textes traduits.
  static const String title = 'title';
  static const String body = 'body';

  // Les textes traduits en anglais.
  static const Map<String, dynamic> EN = {
    'title': 'Localization', // Le titre en anglais.
    'body': 'Welcome to this localized Flutter application %a', // Le texte du corps en anglais.
  };

  // Les textes traduits en français.
  static const Map<String, dynamic> FR = {
    'title': 'Localisation', // Le titre en français.
    'body': 'Bienvenue dans cette application Flutter localisée %a', // Le texte du corps en français.
  };

  // Les textes traduits en espagnol.
  static const Map<String, dynamic> ES = {
    'title': 'Localización', // Le titre en espagnol.
    'body': 'Bienvenido a esta aplicación Flutter localizada %a', // Le texte du corps en espagnol.
  };

  // Les textes traduits en chinois.
  static const Map<String, dynamic> ZH = {
    'title': '本地化', // Le titre en chinois.
    'body': '欢迎使用此本地化 Flutter 应用 %a', // Le texte du corps en chinois.
  };

  // Les textes traduits en japonais.
  static const Map<String, dynamic> JA = {
    'title': 'ローカライゼーション', // Le titre en japonais.
    'body': 'このローカライズされた Flutter アプリケーションへようこそ %a', // Le texte du corps en japonais.
  };

  // Les textes traduits en russe.
  static const Map<String, dynamic> RU = {
    'title': 'Локализация', // Le titre en russe.
    'body': 'Добро пожаловать в это локализованное приложение Flutter %a', // Le texte du corps en russe.
  };
}
