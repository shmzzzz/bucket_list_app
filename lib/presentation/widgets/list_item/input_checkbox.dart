import 'package:bucket_list_app/presentation/theme/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class InputCheckbox extends HookWidget {
  const InputCheckbox({super.key});

  @override
  Widget build(BuildContext context) {
    final isChecked = useState(false);

    return SizedBox(
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
    );
  }
}
