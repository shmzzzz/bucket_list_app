import 'package:bucket_list_app/presentation/theme/app_strings.dart';
import 'package:bucket_list_app/presentation/theme/app_text_styles.dart';
import 'package:bucket_list_app/presentation/theme/sizes.dart';
import 'package:bucket_list_app/presentation/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ListItemPage extends HookWidget {
  const ListItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isChecked = useState(false);
    final titleController = useTextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          AppStrings.appBarTitleListItem,
          style: AppTextStyles.appBarTextStyle,
        ),
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
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
                      color: Colors.transparent,
                      child: const Center(
                        child: Text("This is a modal sheet"),
                      ),
                    );
                  });
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
              padding: const EdgeInsets.all(Sizes.p20),
              child: Row(
                children: [
                  Checkbox(
                    value: isChecked.value,
                    onChanged: (value) {
                      if (value != null) {
                        isChecked.value = value;
                      }
                    },
                  ),
                  const SizedBox(
                    width: Sizes.p10,
                  ),
                  Expanded(
                    child: TextFormField(
                      controller: titleController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'やりたいことの追加…',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: Sizes.p20,
            ),
            Container(
              color: MaterialTheme.lightScheme().onPrimary,
              padding: const EdgeInsets.all(Sizes.p20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.star_border),
                      const SizedBox(
                        width: Sizes.p10,
                      ),
                      Expanded(
                        child: Text('やりたい度'),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: Sizes.p20,
                  ),
                  Row(
                    children: [
                      Icon(Icons.star_border),
                      const SizedBox(
                        width: Sizes.p10,
                      ),
                      Expanded(
                        child: Text('期限'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
