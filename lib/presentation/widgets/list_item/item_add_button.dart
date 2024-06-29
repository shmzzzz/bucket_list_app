import 'package:bucket_list_app/application/state/due_notifier.dart';
import 'package:bucket_list_app/application/state/memo_notifier.dart';
import 'package:bucket_list_app/application/state/title_notifier.dart';
import 'package:bucket_list_app/application/state/wish_level_notifier.dart';
import 'package:bucket_list_app/presentation/router/router.dart';
import 'package:bucket_list_app/presentation/theme/app_strings.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ItemAddButton extends ConsumerStatefulWidget {
  const ItemAddButton({super.key});

  @override
  ConsumerState<ItemAddButton> createState() => _ItemAddButtonState();
}

class _ItemAddButtonState extends ConsumerState<ItemAddButton> {
  String inputCategory = '';

  @override
  Widget build(BuildContext context) {
    final inputTitle = ref.watch(titleNotifierProvider.notifier).getTitle();
    final inputWishLevel = ref.watch(wishLevelNotifierProvider);
    final inputDue = ref.watch(dueNotifierProvider);
    final inputMemo = ref.watch(memoNotifierProvider.notifier).getMemo();

    return ListTile(
      title: const Text(
        AppStrings.addButton,
      ),
      onTap: () => _submitData(inputTitle, inputWishLevel, inputDue, inputMemo),
    );
  }

  void _submitData(String title, int wishLevel, DateTime due, String memo) {
    try {
      // ユーザーのUIDを取得
      String userUid = FirebaseAuth.instance.currentUser!.uid;
      // ユーザーごとにデータを保存するパスを構築
      String userPath = 'users/$userUid/data';
      // FireStoreにデータを保存する
      // ユーザーごとに出し分けたいため、collectionに渡すpathを変更する
      FirebaseFirestore.instance.collection(userPath).add(
        {
          'title': title,
          'wish_level': wishLevel,
          'due': due,
          'memo': memo,
          'category': inputCategory,
          'createdAt': Timestamp.now()
        },
      );
      // 追加後はリスト画面に遷移する
      context.go(RoutePaths.route + RoutePaths.list);
    } catch (error) {
      _showSnackBar(error.toString());
    }
  }

  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }
}
