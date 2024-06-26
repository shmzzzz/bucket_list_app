import 'package:bucket_list_app/presentation/router/router.dart';
import 'package:bucket_list_app/presentation/theme/app_strings.dart';
import 'package:bucket_list_app/presentation/theme/app_text_styles.dart';
import 'package:bucket_list_app/presentation/theme/theme.dart';
import 'package:bucket_list_app/presentation/widgets/list/tab_bar_items.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> tabItems = [
      const Text(AppStrings.listTitle),
      const Text(AppStrings.categoryTitle),
      const Text(AppStrings.wishLevelTitle),
    ];

    const inititalTabIndex = 0;

    return DefaultTabController(
      initialIndex: inititalTabIndex,
      length: tabItems.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            AppStrings.appBarTitleList,
            style: AppTextStyles.appBarTextStyle,
          ),
          bottom: TabBarItems(
            tabItems: tabItems,
          ),
          actions: [
            IconButton(
              onPressed: () {
                context.push(
                  RoutePaths.route +
                      RoutePaths.list +
                      RoutePaths.route +
                      RoutePaths.listItem,
                );
              },
              icon: const Icon(
                Icons.add_circle_outline,
              ),
            ),
          ],
        ),
        body: TabBarView(
          children: [
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Container(
                    height: 80,
                    color: MaterialTheme.lightScheme().primary,
                  ),
                );
              },
            ),
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Container(
                    height: 80,
                    color: MaterialTheme.lightScheme().inversePrimary,
                  ),
                );
              },
            ),
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Container(
                    height: 80,
                    color: MaterialTheme.lightScheme().tertiary,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
