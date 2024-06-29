import 'package:bucket_list_app/application/state/memo_notifier.dart';
import 'package:bucket_list_app/presentation/theme/app_strings.dart';
import 'package:bucket_list_app/presentation/theme/sizes.dart';
import 'package:bucket_list_app/presentation/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// リストアイテム画面
/// メモ入力フォーム
class InputMemo extends HookConsumerWidget {
  const InputMemo({
    super.key,
    required this.formKey,
    required this.controller,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final memo = ref.watch(memoNotifierProvider.notifier);

    return Expanded(
      child: Form(
        key: formKey,
        child: Container(
          color: MaterialTheme.lightScheme().onPrimary,
          padding: const EdgeInsets.all(Sizes.p20),
          child: TextFormField(
            maxLines: null,
            controller: controller,
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: AppStrings.hintMemo,
            ),
            onChanged: (inputMemo) {
              memo.setMemo(inputMemo);
            },
          ),
        ),
      ),
    );
  }
}
