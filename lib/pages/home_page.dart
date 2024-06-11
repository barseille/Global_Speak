import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:test_i18n/localization/locales.dart';

// HomePage est la page d'accueil de notre application.
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Déclare une instance de FlutterLocalization.
  late FlutterLocalization _flutterLocalization;
  // La langue actuellement sélectionnée.
  late String _currentLocale;

  // Cette fonction est appelée une fois lorsque le widget est inséré dans l'arbre des widgets.
  @override
  void initState() {
    super.initState();
    // Initialise FlutterLocalization.
    _flutterLocalization = FlutterLocalization.instance;
    // Définit la langue actuelle. Si aucune langue n'est définie, utilise le japonais par défaut.
    _currentLocale = _flutterLocalization.currentLocale?.languageCode ?? 'ja';
    print(_currentLocale);
  }

  // Cette fonction construit l'interface utilisateur de la page d'accueil.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // La barre d'application en haut de l'écran.
      appBar: AppBar(
        title: Text(
          // Le titre de l'application dans la langue sélectionnée.
          LocaleData.title.getString(context),
        ),
        backgroundColor: Colors.teal, // Couleur de fond de l'AppBar.
        actions: [
          // Un menu déroulant pour changer la langue.
          DropdownButton<String>(
            value: _currentLocale,
            dropdownColor: Colors.teal, // Couleur de fond du menu déroulant.
            iconEnabledColor: Colors.white, // Couleur de l'icône du menu déroulant.
            items: const [
              DropdownMenuItem(
                value: "en",
                child: Text("English", style: TextStyle(color: Colors.white)),
              ),
              DropdownMenuItem(
                value: "fr",
                child: Text("French", style: TextStyle(color: Colors.white)),
              ),
              DropdownMenuItem(
                value: "es",
                child: Text("Spanish", style: TextStyle(color: Colors.white)),
              ),
              DropdownMenuItem(
                value: "zh",
                child: Text("Chinese", style: TextStyle(color: Colors.white)),
              ),
              DropdownMenuItem(
                value: "ja",
                child: Text("Japanese", style: TextStyle(color: Colors.white)),
              ),
              DropdownMenuItem(
                value: "ru",
                child: Text("Russian", style: TextStyle(color: Colors.white)),
              ),
            ],
            onChanged: (String? value) {
              // Change la langue lorsque l'utilisateur sélectionne une nouvelle langue.
              _setLocale(value);
            },
          ),
        ],
      ),
      // Le corps de la page.
      body: Container(
        // Ajoute du padding autour du texte.
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 50,
        ),
        // Centre le texte dans la page.
        alignment: Alignment.center,
        // Ajoute une bordure autour du texte.
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Colors.teal, // Couleur de la bordure.
            width: 2,
          ),
          // Ajoute de l'ombre pour un effet 3D.
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(2, 2),
            ),
          ],
        ),
        // Le texte principal affiché sur la page.
        child: Text(
          context.formatString(LocaleData.body, ["Jayden"]),
          // Style du texte.
          style: const TextStyle(
            fontSize: 24,
            color: Colors.teal, // Couleur du texte.
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  // Cette fonction change la langue de l'application.
  void _setLocale(String? value) {
    if (value == null) return;
    _flutterLocalization.translate(value);
    // Met à jour l'interface utilisateur avec la nouvelle langue.
    setState(() {
      _currentLocale = value;
    });
  }
}
