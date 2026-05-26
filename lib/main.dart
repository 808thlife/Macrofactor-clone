import 'package:flutter/material.dart';
import 'package:macrofactor_clone/presentation/screens/homepage.dart';
import 'package:macrofactor_clone/utils/themes/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Macrofactor',
      debugShowCheckedModeBanner: false,
      theme: MacrofactorTheme.getTheme,
      home: const HomePage(),
    );
  }
}
