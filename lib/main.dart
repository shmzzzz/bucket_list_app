import 'package:bucket_list_app/application/state/auth_state_changes_provider.dart';
import 'package:bucket_list_app/common/router.dart';
import 'package:bucket_list_app/infrastructure/firebase_options.dart';
import 'package:bucket_list_app/presentation/page/list_page.dart';
import 'package:bucket_list_app/presentation/page/login_page.dart';
import 'package:bucket_list_app/presentation/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ProviderScope(child: MyApp()));
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
        highlightColor: MaterialTheme.lightScheme().onPrimary,
      ),
      darkTheme: ThemeData(
        colorScheme: MaterialTheme.darkScheme().toColorScheme(),
        textTheme: MaterialTheme.openSansTextTheme(context),
        highlightColor: MaterialTheme.darkScheme().onPrimary,
      ),
    );
  }
}

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authStateAsync = ref.watch(authStateChangesProvider);
    return authStateAsync.when(
      data: (user) => user != null ? const ListPage() : const LoginPage(),
      loading: () => const CircularProgressIndicator(),
      error: (err, stack) => Text('Error: $err'),
    );
  }
}
