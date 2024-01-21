import 'package:bucket_list_app/presentation/page/login_page.dart';
import 'package:bucket_list_app/presentation/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: MaterialTheme.lightScheme().toColorScheme(),
        textTheme: MaterialTheme.openSansTextTheme(context),
      ),
      darkTheme: ThemeData(
        colorScheme: MaterialTheme.darkScheme().toColorScheme(),
        textTheme: MaterialTheme.openSansTextTheme(context),
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
