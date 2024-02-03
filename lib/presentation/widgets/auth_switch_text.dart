import 'package:bucket_list_app/presentation/theme/strings.dart';
import 'package:flutter/material.dart';

/// ログイン画面
/// サインイン/サインアップ切り替え用テキスト
class AuthSwitchText extends StatelessWidget {
  const AuthSwitchText({
    super.key,
    required this.isSignIn,
  });

  final ValueNotifier<bool> isSignIn;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        isSignIn.value = !isSignIn.value;
      },
      child: Center(
        child: Text(
          isSignIn.value ? Strings.authSignUp : Strings.authSignIn,
        ),
      ),
    );
  }
}
