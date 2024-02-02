import 'package:bucket_list_app/presentation/theme/strings.dart';
import 'package:flutter/material.dart';

/// ログイン画面
/// サインイン/サインアップボタン
class AuthSwitchButton extends StatelessWidget {
  const AuthSwitchButton({
    super.key,
    required this.submit,
    required this.isLogin,
  });

  final void Function() submit;
  final ValueNotifier<bool> isLogin;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: submit,
      child: Text(
        isLogin.value ? Strings.signIn : Strings.signUp,
      ),
    );
  }
}
