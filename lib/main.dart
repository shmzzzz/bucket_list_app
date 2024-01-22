import 'package:bucket_list_app/common/router.dart';
import 'package:bucket_list_app/presentation/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: goRouter.routerDelegate,
      routeInformationParser: goRouter.routeInformationParser,
      routeInformationProvider: goRouter.routeInformationProvider,
      theme: ThemeData(
        colorScheme: MaterialTheme.lightScheme().toColorScheme(),
        textTheme: MaterialTheme.openSansTextTheme(context),
      ),
      darkTheme: ThemeData(
        colorScheme: MaterialTheme.darkScheme().toColorScheme(),
        textTheme: MaterialTheme.openSansTextTheme(context),
      ),
    );
  }
}
