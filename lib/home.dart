import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String selectedLanguage = 'English'; // Default language

  void _onLanguageChanged(String? newValue) {
    setState(() {
      selectedLanguage = newValue!;
    });}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(45, 50, 45, 50),
            width: 350,
            height: 350,
            child: Image.asset(
              'assets/img/img1.png',
              width: 300,
              height: 300,
              fit:
                  BoxFit.cover, // This will make the image cover the container.
            ),
          ),
          const Text("Information and\nCommunication\nTechnology",
              style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 45,
          ),
          const Text('Welcome to ICT ',
              style: TextStyle(fontSize: 22, color: Colors.grey)),
          const Text('for participate in filling out ',
              style: TextStyle(fontSize: 22, color: Colors.grey)),
          const Text('the Ministry of Peshmerga application',
              style: TextStyle(fontSize: 22, color: Colors.grey)),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/volunteer_form');
              },
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(150, 25, 150, 25),
                  shape: ContinuousRectangleBorder(
                      side: const BorderSide(
                          width: 5, color: Color.fromRGBO(87, 128, 86, 1.0)),
                      borderRadius: BorderRadius.circular(22))),
              child: const Text(
                'Start',
                style: TextStyle(
                    fontSize: 30,
                    color: Color.fromRGBO(87, 128, 86, 1.0),
                    fontWeight: FontWeight.bold),
              ))
        ],
      ),
    ));
  }
}
