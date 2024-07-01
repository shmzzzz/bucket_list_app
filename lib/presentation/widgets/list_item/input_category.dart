import 'package:bucket_list_app/application/state/category_notifier.dart';
import 'package:bucket_list_app/presentation/theme/app_strings.dart';
import 'package:bucket_list_app/presentation/theme/category_list.dart';
import 'package:bucket_list_app/presentation/theme/sizes.dart';
import 'package:bucket_list_app/presentation/widgets/list_item/category_selection_sheet.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

/// リストアイテム画面
/// カテゴリ
class InputCategory extends ConsumerStatefulWidget {
  const InputCategory({super.key});

  @override
  ConsumerState<InputCategory> createState() => _InputCategoryState();
}

class _InputCategoryState extends ConsumerState<InputCategory> {
  late int selectedCategoryIndex;

  @override
  void initState() {
    super.initState();
    selectedCategoryIndex = ref.read(categoryNotifierProvider);
  }

  @override
  Widget build(BuildContext context) {
    final category = ref.watch(categoryNotifierProvider.notifier);

    return ListTile(
      leading: const Icon(Icons.sell_outlined),
      title: const Text(AppStrings.categoryTitle),
      trailing: Consumer(
        builder: (context, ref, _) {
          final selectedCategory = categoryList[selectedCategoryIndex];
          return Text(
            selectedCategory,
            style: const TextStyle(
              fontSize: Sizes.f16,
            ),
          );
        },
      ),
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
            return CategorySelectionSheet(
              initialCategoryIndex: selectedCategoryIndex,
              onCategorySelected: (index) {
                category.setCategoryIndex(index);
                setState(() {
                  selectedCategoryIndex = index;
                });
              },
            );
          },
        );
      },
    );
  }
}
