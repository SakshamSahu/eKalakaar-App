// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:ekalakaar_app/screens/onboarding.dart';

void main() {
  runApp(const ekalakaar());
}

class ekalakaar extends StatelessWidget {
  const ekalakaar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: const [
          Onboarding(),
        ]),
      ),
    );
  }
}
