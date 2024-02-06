import 'package:bucket_list_app/presentation/theme/app_strings.dart';
import 'package:bucket_list_app/presentation/theme/app_text_styles.dart';
import 'package:bucket_list_app/presentation/theme/sizes.dart';
import 'package:bucket_list_app/presentation/theme/theme.dart';
import 'package:flutter/material.dart';

class AchievedListPage extends StatelessWidget {
  const AchievedListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          AppStrings.appBarTitleAchieved,
          style: AppTextStyles.appBarTextStyle,
        ),
      ),
      body: Center(
        child: Text(
          'This is ACHIEVED LIST PAGE',
          style: TextStyle(
            color: MaterialTheme.lightScheme().primary,
            fontSize: Sizes.f20,
          ),
        ),
      ),
    );
  }
}
