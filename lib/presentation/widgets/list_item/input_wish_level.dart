import 'package:bucket_list_app/application/state/wish_level_notifier.dart';
import 'package:bucket_list_app/presentation/theme/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// リストアイテム画面
/// やりたい度
class InputWishLevel extends ConsumerWidget {
  const InputWishLevel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final wishLevel = ref.watch(wishLevelNotifierProvider);
    
    return ListTile(
      leading: const Icon(Icons.star_border),
      title: const Text(AppStrings.wishLevelTitle),
      trailing: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: List.generate(
          5,
          (index) {
            return SizedBox(
              child: InkWell(
                onTap: () {
                  ref
                      .read(wishLevelNotifierProvider.notifier)
                      .setWishLevel(index + 1);
                },
                child: SizedBox(
                  child: Icon(
                    index < wishLevel ? Icons.star : Icons.star_border,
                    color: Colors.black,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
