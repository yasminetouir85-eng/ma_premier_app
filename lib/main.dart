import 'package:flutter/material.dart';
import 'login_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: Colors.lightGreen,
appBarTheme: const AppBarTheme(
backgroundColor: Colors.lightGreen,)),
      home: const LoginPage(),
    );
    
  }
}


