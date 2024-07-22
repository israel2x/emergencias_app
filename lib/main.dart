import 'package:alarma/screens/locationScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 212, 238, 244),
        appBar: AppBar(
          elevation: 15.5,
          backgroundColor: Color.fromARGB(255, 23, 97, 187),
          title: Center(
              child: Text(
            "EMERGENCIAS",
            style: TextStyle(
                color: Color.fromARGB(255, 251, 250, 246),
                fontWeight: FontWeight.bold),
          )),
        ),
        body: SafeArea(child: LocationScreen()),
      ),
    );
  }
}
