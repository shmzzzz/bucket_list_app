import 'package:bucket_list_app/application/state/achieved_notifier.dart';
import 'package:bucket_list_app/presentation/theme/sizes.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class InputCheckbox extends ConsumerWidget {
  const InputCheckbox({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isCheckedNotifier = ref.watch(achievedNotifierProvider.notifier);
    final isChecked = ref.watch(achievedNotifierProvider);

    return SizedBox(
      height: Sizes.s24,
      width: Sizes.s24,
      child: Checkbox(
        value: isChecked,
        onChanged: (value) {
          if (value != null) {
            isCheckedNotifier.toggleState();
          }
        },
      ),
    );
  }
}
