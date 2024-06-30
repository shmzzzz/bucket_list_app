import 'package:bucket_list_app/application/state/title_notifier.dart';
import 'package:bucket_list_app/presentation/theme/app_strings.dart';
import 'package:bucket_list_app/presentation/theme/theme.dart';
import 'package:bucket_list_app/presentation/widgets/list_item/input_checkbox.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// リストアイテム画面
/// タイトル入力フォーム
class InputTitle extends HookConsumerWidget {
  const InputTitle({
    super.key,
    required this.formKey,
    required this.controller,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final title = ref.watch(titleNotifierProvider.notifier);

    return Form(
      key: formKey,
      child: Container(
        color: MaterialTheme.lightScheme().onPrimary,
        child: ListTile(
          leading: const InputCheckbox(),
          title: TextFormField(
            controller: controller,
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: AppStrings.hintTitle,
            ),
            onChanged: (inputTitle) {
              title.setTitle(inputTitle);
            },
          ),
        ),
      ),
    );
  }
}
