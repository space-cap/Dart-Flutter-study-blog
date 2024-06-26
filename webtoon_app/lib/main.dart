import 'package:flutter/material.dart';
import 'package:webtoon_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // material(구글) 또는 cupertino(ios) 위젯을 return
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
