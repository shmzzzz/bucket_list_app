import 'package:bucket_list_app/presentation/theme/app_strings.dart';
import 'package:bucket_list_app/presentation/theme/sizes.dart';
import 'package:bucket_list_app/presentation/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// リストアイテム画面
/// タイトル入力フォーム
class TitleTextForm extends HookWidget {
  const TitleTextForm({
    super.key,
    required this.formKey,
    required this.controller,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final isChecked = useState(false);

    return Form(
      key: formKey,
      child: Container(
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
            controller: controller,
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: AppStrings.hintTitle,
            ),
          ),
        ),
      ),
    );
  }
}
