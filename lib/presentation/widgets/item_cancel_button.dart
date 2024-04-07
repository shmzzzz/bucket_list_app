import 'package:bucket_list_app/presentation/theme/app_strings.dart';
import 'package:flutter/material.dart';

class ItemCancelButton extends StatelessWidget {
  const ItemCancelButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text(
        AppStrings.cancelButton,
      ),
      onTap: () {},
    );
  }
}
