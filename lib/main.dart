import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:test_i18n/localization/locales.dart';
import 'package:test_i18n/pages/home_page.dart';

// Cette fonction est le point de départ de notre application.
void main() {
  // Assure que les widgets Flutter sont initialisés.
  WidgetsFlutterBinding.ensureInitialized();
  // Lance l'application en utilisant MyApp comme widget principal.
  runApp(const MyApp());
}

// MyApp est notre widget principal.
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Crée une instance de FlutterLocalization pour gérer les langues.
  final FlutterLocalization localization = FlutterLocalization.instance;

  // Cette fonction est appelée une fois lorsque le widget est inséré dans l'arbre des widgets.
  @override
  void initState() {
    // Configure la localisation avant d'appeler initState() du parent.
    configureLocalization();
    super.initState();
  }

  // Cette fonction construit l'interface utilisateur de l'application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Enlève le bandeau de debug.
      debugShowCheckedModeBanner: false,
      // Définit le titre de l'application.
      title: 'test_internationalisation',
      // Définit le thème de l'application.
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // Supporte les locales définies.
      supportedLocales: localization.supportedLocales,
      // Définit les délégués de localisation.
      localizationsDelegates: localization.localizationsDelegates,
      // Définit la page d'accueil de l'application.
      home: const HomePage(),
    );
  }

  // Configure la localisation de l'application.
  void configureLocalization() {
    // Initialise la localisation avec les locales et la langue par défaut (japonais).
    localization.init(mapLocales: LOCALES, initLanguageCode: 'ja');
    // Définit une fonction à appeler lorsque la langue change.
    localization.onTranslatedLanguage = onTranslatedLanguage;
  }

  // Fonction appelée lorsque la langue change.
  void onTranslatedLanguage(Locale? locale) {
    // Met à jour l'interface utilisateur.
    setState(() {});
  }
}
