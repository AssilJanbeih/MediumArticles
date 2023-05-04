import 'package:flutter/material.dart';
import 'package:flutter_appbar_background_image/appppBarImage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appbar Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AppBarImageExample(),
    );
  }
}