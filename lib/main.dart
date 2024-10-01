import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:militery/hospita_form.dart'; // Make sure the file name is correct; it's typically `hospital_form.dart`
import 'l10n/intl_en.dart';
import 'l10n/intl_ku.dart';
import 'l10n/intl_ar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hospital Form',
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        // Add your localizations delegates here if needed
      ],
      supportedLocales: const [
        Locale('en'), // English
        Locale('ku'), // Kurdish
        Locale('ar'), // Arabic
      ],
      debugShowCheckedModeBanner: false,
      initialRoute: '/hospital_form',
      routes: {

        '/hospital_form': (context) => const HospitalForm(),
      },
    );
  }
}