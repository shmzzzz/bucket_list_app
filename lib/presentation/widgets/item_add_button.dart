import 'package:bucket_list_app/presentation/theme/app_strings.dart';
import 'package:flutter/material.dart';

class ItemAddButton extends StatelessWidget {
  const ItemAddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text(
        AppStrings.addButton,
      ),
      onTap: () {},
    );
  }
}
