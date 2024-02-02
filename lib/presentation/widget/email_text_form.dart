import 'package:bucket_list_app/presentation/theme/strings.dart';
import 'package:flutter/material.dart';

/// ログイン画面
/// Email入力フォーム
class EmailTextForm extends StatelessWidget {
  const EmailTextForm({
    super.key,
    required this.formKey,
    required this.controller,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: TextFormField(
        controller: controller,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: Strings.email,
        ),
        keyboardType: TextInputType.emailAddress,
        autocorrect: false,
        textCapitalization: TextCapitalization.none,
        validator: (value) {
          if (value == null || value.trim().isEmpty || !value.contains('@')) {
            return Strings.errorEmail;
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
