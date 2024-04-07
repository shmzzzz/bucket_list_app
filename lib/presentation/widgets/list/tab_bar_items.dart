import 'package:bucket_list_app/presentation/theme/sizes.dart';
import 'package:flutter/material.dart';

class TabBarItems extends StatelessWidget implements PreferredSizeWidget {
  const TabBarItems({
    super.key,
    required this.tabItems,
  });

  final List<Widget> tabItems;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      tabs: [...tabItems],
      labelPadding: const EdgeInsets.symmetric(
        horizontal: Sizes.p28,
        vertical: Sizes.p14,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
