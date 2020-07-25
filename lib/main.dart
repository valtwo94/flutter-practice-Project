import 'package:flutter/material.dart';
import 'package:practice1/Pages/HomePage.dart';

void main() {
  runApp(Practice());
}

class Practice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Practice App',
      initialRoute: HomePage.id,
      routes: {HomePage.id: (context) => HomePage()},
    );
  }
}
