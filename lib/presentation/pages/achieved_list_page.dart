import 'package:bucket_list_app/presentation/theme/app_strings.dart';
import 'package:bucket_list_app/presentation/theme/sizes.dart';
import 'package:flutter/material.dart';

class AchievedListPage extends StatelessWidget {
  const AchievedListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          AppStrings.appBarTitleAchieved,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: Sizes.f20,
          ),
        ),
      ),
      body: Center(
        child: Text(
          'This is ACHIEVED LIST PAGE',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
