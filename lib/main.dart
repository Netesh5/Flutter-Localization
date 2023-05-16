import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:localizationapp/view/login.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocalJsonLocalization.delegate.directories = ['lib/i10n'];
    return MaterialApp(localizationsDelegates: [
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
      LocalJsonLocalization.delegate,
    ], supportedLocales: const [
      Locale('np'), // Nepali
      Locale('en'), // English
      Locale('hi'), // Hindi
      Locale('ja'), // Japanese
    ], debugShowCheckedModeBanner: false, home: const LoginScreen());
  }
}
