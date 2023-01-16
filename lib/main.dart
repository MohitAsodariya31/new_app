/// 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
import 'package:flutter/material.dart';
import 'package:new_app/first_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const FirstScreen(),
    );
  }
}
