import 'package:bucket_list_app/presentation/router/router.dart';
import 'package:bucket_list_app/presentation/theme/app_strings.dart';
import 'package:bucket_list_app/presentation/widgets/app_bottom_nav.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    const currentIndex = 2;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          AppStrings.appBarTitle,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'This is MY PAGE',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            OutlinedButton(
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
                context.go(RoutePaths.routeAuth);
              },
              child: const Text(
                'ログアウト',
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const AppBottomNav(
        currentIndex: currentIndex,
      ),
    );
  }
}
