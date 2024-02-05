import 'package:bucket_list_app/presentation/theme/app_strings.dart';
import 'package:bucket_list_app/presentation/widgets/app_bottom_nav.dart';
import 'package:flutter/material.dart';

class AchievedListPage extends StatelessWidget {
  const AchievedListPage({super.key});

  @override
  Widget build(BuildContext context) {
    const currentIndex = 1;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          AppStrings.appBarTitle,
        ),
      ),
      body: Center(
        child: Text(
          'This is ACHIEVED LIST PAGE',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      bottomNavigationBar: const AppBottomNav(
        currentIndex: currentIndex,
      ),
    );
  }
}
