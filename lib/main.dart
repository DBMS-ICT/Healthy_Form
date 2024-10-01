import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:militery/home.dart';
import 'package:militery/hospita_form.dart';
import 'package:militery/FBI.dart'; // Make sure the file name is correct; it's typically `hospital_form.dart`

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
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
      initialRoute: '/volunteer_form',
      routes: {
        '/': (context) => const Home(),
        '/volunteer_form': (context) => const FBI(),
        '/hospital_form': (context) => const HospitalForm(),
      },
    );
  }
}
