import 'package:bucket_list_app/application/state/category_notifier.dart';
import 'package:bucket_list_app/presentation/theme/app_strings.dart';
import 'package:bucket_list_app/presentation/theme/sizes.dart';
import 'package:bucket_list_app/presentation/theme/theme.dart';
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

class CategorySelectionSheet extends StatefulWidget {
  final int initialCategoryIndex;
  final ValueChanged<int> onCategorySelected;

  const CategorySelectionSheet({
    required this.initialCategoryIndex,
    required this.onCategorySelected,
    super.key,
  });

  @override
  State<StatefulWidget> createState() => _CategorySelectionSheetState();
}

class _CategorySelectionSheetState extends State<CategorySelectionSheet> {
  late int selectedCategoryIndex;

  @override
  void initState() {
    super.initState();
    selectedCategoryIndex = widget.initialCategoryIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Sizes.p10),
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height / 5,
      color: Colors.transparent,
      child: Wrap(
        spacing: 12,
        runSpacing: 12,
        children: List<Widget>.generate(categoryList.length, (index) {
          final isSelected = selectedCategoryIndex == index;
          return ChoiceChip(
            showCheckmark: false,
            label: Text(categoryList[index]),
            selected: isSelected,
            onSelected: (selected) {
              if (selected) {
                setState(() {
                  selectedCategoryIndex = index;
                });
                widget.onCategorySelected(index);
              }
            },
            selectedColor: MaterialTheme.lightScheme().primary,
            backgroundColor: Colors.white,
            labelStyle: TextStyle(
              color: isSelected
                  ? Colors.white
                  : MaterialTheme.lightScheme().primary,
            ),
          );
        }),
      ),
    );
  }
}

final categoryList = [
  '旅行',
  '家族',
  '人間関係',
  '趣味',
  '食事',
  '仕事',
  'お金',
  '体験・経験',
];
