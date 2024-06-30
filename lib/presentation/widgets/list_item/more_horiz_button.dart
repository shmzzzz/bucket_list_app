import 'package:bucket_list_app/presentation/theme/sizes.dart';
import 'package:bucket_list_app/presentation/widgets/list_item/item_add_button.dart';
import 'package:bucket_list_app/presentation/widgets/list_item/item_cancel_button.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class MoreHorizButton extends StatelessWidget {
  const MoreHorizButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.more_horiz_outlined,
      ),
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
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ItemAddButton(),
                  ItemCancelButton(),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
