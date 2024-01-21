import 'package:bucket_list_app/presentation/page/login_page.dart';
import 'package:bucket_list_app/presentation/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: MaterialTheme.lightScheme().toColorScheme(),
      ),
      darkTheme: ThemeData(
        colorScheme: MaterialTheme.darkScheme().toColorScheme(),
      ),
      home: const LoginPage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return const LoginPage();
  }
}
