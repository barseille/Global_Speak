import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:test_i18n/localization/locales.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late FlutterLocalization _flutterLocalization;
  late String _currentLocale;

  @override
  void initState() {
    super.initState();
    _flutterLocalization = FlutterLocalization.instance;
    _currentLocale = _flutterLocalization.currentLocale?.languageCode ?? 'ja';
    print(_currentLocale);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          LocaleData.title.getString(context),
        ),
        actions: [
          DropdownButton<String>(
            value: _currentLocale,
            items: const [
              DropdownMenuItem(
                value: "en",
                child: Text("English"),
              ),
              DropdownMenuItem(
                value: "fr",
                child: Text("French"),
              ),
              DropdownMenuItem(
                value: "es",
                child: Text("Spanish"),
              ),
              DropdownMenuItem(
                value: "zh",
                child: Text("Chinese"),
              ),
              DropdownMenuItem(
                value: "ja",
                child: Text("Japanese"),
              ),
              DropdownMenuItem(
                value: "ru",
                child: Text("Russian"),
              ),
            ],
            onChanged: (String? value) {
              _setLocale(value);
            },
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 50,
        ),
        child: Text(
          context.formatString(LocaleData.body, ["Jayden"]),
          style: const TextStyle(
            fontSize: 21,
          ),
        ),
      ),
    );
  }

  void _setLocale(String? value) {
    if (value == null) return;
    _flutterLocalization.translate(value);
    setState(() {
      _currentLocale = value;
    });
  }
}
