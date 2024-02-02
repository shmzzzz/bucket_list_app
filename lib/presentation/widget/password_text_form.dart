import 'package:bucket_list_app/presentation/theme/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// ログイン画面
/// パスワード入力フォーム
class PasswordTextForm extends HookWidget {
  const PasswordTextForm({
    super.key,
    required this.formKey,
    required this.controller,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final isObscured = useState(true);

    return Form(
      key: formKey,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: Strings.password,
          suffixIcon: IconButton(
            icon: isObscured.value
                ? const Icon(Icons.visibility)
                : const Icon(Icons.visibility_off_outlined),
            onPressed: () {
              isObscured.value = !isObscured.value;
            },
          ),
        ),
        obscureText: isObscured.value,
        validator: (value) {
          if (value == null || value.trim().isEmpty) {
            return Strings.errorPassword;
          }
          return null;
        },
        onSaved: (newValue) {
          controller.text = newValue!;
        },
      ),
    );
  }
}
