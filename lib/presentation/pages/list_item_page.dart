import 'package:bucket_list_app/presentation/theme/app_strings.dart';
import 'package:bucket_list_app/presentation/theme/app_text_styles.dart';
import 'package:bucket_list_app/presentation/theme/sizes.dart';
import 'package:bucket_list_app/presentation/theme/theme.dart';
import 'package:bucket_list_app/presentation/widgets/input_category.dart';
import 'package:bucket_list_app/presentation/widgets/input_due.dart';
import 'package:bucket_list_app/presentation/widgets/input_memo.dart';
import 'package:bucket_list_app/presentation/widgets/input_wish_level.dart';
import 'package:bucket_list_app/presentation/widgets/more_horiz_button.dart';
import 'package:bucket_list_app/presentation/widgets/title_text_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ListItemPage extends HookWidget {
  const ListItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final titleFormKey = GlobalKey<FormState>();
    final memoFormKey = GlobalKey<FormState>();

    final titleController = useTextEditingController(text: AppStrings.empty);
    final memoController = useTextEditingController(text: AppStrings.empty);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          AppStrings.appBarTitleListItem,
          style: AppTextStyles.appBarTextStyle,
        ),
        actions: const [
          MoreHorizButton(),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            TitleTextForm(
              formKey: titleFormKey,
              controller: titleController,
            ),
            const SizedBox(
              height: Sizes.p20,
            ),
            Container(
              color: MaterialTheme.lightScheme().onPrimary,
              child: const Column(
                children: [
                  InputWishLevel(),
                  InputDue(),
                  InputCategory(),
                ],
              ),
            ),
            const SizedBox(
              height: Sizes.p20,
            ),
            InputMemo(
              formKey: memoFormKey,
              controller: memoController,
            ),
          ],
        ),
      ),
    );
  }
}
