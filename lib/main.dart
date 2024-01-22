import 'package:bucket_list_app/common/router.dart';
import 'package:bucket_list_app/infrastructure/firebase_options.dart';
import 'package:bucket_list_app/presentation/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
