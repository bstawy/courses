import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Courses',
      home: Scaffold(
        appBar: AppBar(title: const Text('Courses')),
        body: const Center(child: Text('Welcome to the Courses App!')),
      ),
    );
  }
}
