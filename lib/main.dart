import 'package:flutter/material.dart';
import 'package:courses/core/theme/app_theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Courses',
      theme: AppTheme.lightThemeData,
      darkTheme: AppTheme.darkThemeData,
      themeMode: ThemeMode.system,
      home: Scaffold(
        appBar: AppBar(title: const Text('Courses')),
        body: const Center(child: Text('Welcome to the Courses App!')),
      ),
    );
  }
}
