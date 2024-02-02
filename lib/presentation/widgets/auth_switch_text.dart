import 'package:bucket_list_app/presentation/theme/strings.dart';
import 'package:flutter/material.dart';

/// ログイン画面
/// サインイン/サインアップ切り替え用テキスト
class AuthSwitchText extends StatelessWidget {
  const AuthSwitchText({
    super.key,
    required this.isLogin,
  });

  final ValueNotifier<bool> isLogin;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        isLogin.value = !isLogin.value;
      },
      child: Center(
        child: Text(
          isLogin.value ? Strings.authSignUp : Strings.authSignIn,
        ),
      ),
    );
  }
}
