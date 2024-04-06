import 'package:bucket_list_app/presentation/theme/app_strings.dart';
import 'package:bucket_list_app/presentation/theme/app_text_styles.dart';
import 'package:bucket_list_app/presentation/theme/sizes.dart';
import 'package:bucket_list_app/presentation/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class ListItemPage extends HookWidget {
  const ListItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isChecked = useState(false);
    final titleController = useTextEditingController();
    final memoController = useTextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          AppStrings.appBarTitleListItem,
          style: AppTextStyles.appBarTextStyle,
        ),
        actions: [
          IconButton(
            onPressed: () {
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
                    height: 150,
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ListTile(
                          title: const Text('追加'),
                          onTap: () {},
                        ),
                        ListTile(
                          title: const Text('キャンセル'),
                          onTap: () {},
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            icon: const Icon(
              Icons.more_horiz_outlined,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              color: MaterialTheme.lightScheme().onPrimary,
              child: ListTile(
                leading: SizedBox(
                  height: Sizes.s24,
                  width: Sizes.s24,
                  child: Checkbox(
                    value: isChecked.value,
                    onChanged: (value) {
                      if (value != null) {
                        isChecked.value = value;
                      }
                    },
                  ),
                ),
                title: TextFormField(
                  controller: titleController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'やりたいことの追加…',
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: Sizes.p20,
            ),
            Container(
              color: MaterialTheme.lightScheme().onPrimary,
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.star_border),
                    title: Text('やりたい度'),
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
                              child: Text("やりたい度入力"),
                            ),
                          );
                        },
                      );
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.calendar_month_outlined),
                    title: Text('期限'),
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
                              child: Text("期限入力"),
                            ),
                          );
                        },
                      );
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.sell_outlined),
                    title: Text('カテゴリ'),
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
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: Sizes.p20,
            ),
            Expanded(
              child: Container(
                color: MaterialTheme.lightScheme().onPrimary,
                padding: const EdgeInsets.all(Sizes.p20),
                child: TextFormField(
                  maxLines: null,
                  controller: memoController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'メモの追加…',
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: Sizes.p20,
            ),
          ],
        ),
      ),
    );
  }
}
