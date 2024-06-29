import 'package:bottom_picker/bottom_picker.dart';
import 'package:bucket_list_app/application/state/due_notifier.dart';
import 'package:bucket_list_app/presentation/theme/app_strings.dart';
import 'package:bucket_list_app/presentation/theme/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

/// リストアイテム画面
/// 期限
class InputDue extends ConsumerWidget {
  const InputDue({super.key});

// }

// class _InputDueState extends ConsumerState<InputDue> {
//   late DateTime due;
//   late DateFormat dateFormat;
//   late String inputDue = '';

  // @override
  // void initState() {
  //   super.initState();
  //   due = DateTime.now();
  //   dateFormat = DateFormat('yyyy/MM/dd');
  //   inputDue = dateFormat.format(due);
  // }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final due = ref.watch(dueNotifierProvider);

    return ListTile(
      leading: const Icon(Icons.calendar_month_outlined),
      title: const Text(AppStrings.dueTitle),
      trailing: Text(
        DateFormat('yyyy/MM/dd').format(due),
        style: const TextStyle(fontSize: Sizes.f16),
      ),
      onTap: () => _openDatePicker(context, ref),
    );
  }

  void _openDatePicker(BuildContext context, WidgetRef ref) {
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
          height: 300,
          color: Colors.transparent,
          child: Center(
            child: BottomPicker.date(
              dateOrder: DatePickerDateOrder.ymd,
              onSubmit: (slectedDate) {
                ref.read(dueNotifierProvider.notifier).setDue(slectedDate);
              },
            ),
          ),
        );
      },
    );
  }
}
