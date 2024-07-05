import 'package:bucket_list_app/presentation/theme/category_list.dart';
import 'package:bucket_list_app/presentation/theme/sizes.dart';
import 'package:bucket_list_app/presentation/theme/theme.dart';
import 'package:flutter/material.dart';

/// リストアイテム画面
/// カテゴリチップ
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
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(Sizes.p20),
        ),
        color: Colors.white,
      ),
      height: MediaQuery.of(context).size.height / 5,
      padding: const EdgeInsets.all(Sizes.p10),
      alignment: Alignment.center,
      child: Wrap(
        spacing: Sizes.p12,
        runSpacing: Sizes.p12,
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
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: isSelected
                    ? Colors.white
                    : MaterialTheme.lightScheme().primary,
                width: Sizes.b05,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
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
