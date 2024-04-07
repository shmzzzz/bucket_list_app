import 'package:bucket_list_app/presentation/theme/app_strings.dart';
import 'package:bucket_list_app/presentation/theme/sizes.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class InputCategory extends ConsumerWidget {
  const InputCategory({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      leading: const Icon(Icons.sell_outlined),
      title: const Text(AppStrings.categoryTitle),
      onTap: () {
        showMaterialModalBottomSheet(
          context: context,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(
                Sizes.p20,
              ),
            ),
          ),
          builder: (builder) {
            return Container(
              height: 200,
              color: Colors.transparent,
              child: const Center(
                child: Text("カテゴリ入力"),
              ),
            );
          },
        );
      },
    );
  }
}
