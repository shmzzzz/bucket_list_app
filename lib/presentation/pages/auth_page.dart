import 'package:bucket_list_app/presentation/theme/sizes.dart';
import 'package:bucket_list_app/presentation/theme/strings.dart';
import 'package:bucket_list_app/presentation/widgets/auth_switch_button.dart';
import 'package:bucket_list_app/presentation/widgets/auth_switch_text.dart';
import 'package:bucket_list_app/presentation/widgets/email_text_form.dart';
import 'package:bucket_list_app/presentation/widgets/password_text_form.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

class AuthPage extends HookWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    final firebase = FirebaseAuth.instance;

    final emailFormKey = GlobalKey<FormState>();
    final passwordFormKey = GlobalKey<FormState>();

    final emailController = useTextEditingController(text: Strings.empty);
    final passwordController = useTextEditingController(text: Strings.empty);

    final isSignIn = useState(true);
    final isAuthenticating = useState(false);

    void submit() async {
      final isValid = emailFormKey.currentState!.validate() &&
          passwordFormKey.currentState!.validate();

      // currentStateがvalidateでない場合は処理を行わない
      if (!isValid) {
        return;
      }

      emailFormKey.currentState!.save();
      passwordFormKey.currentState!.save();

      try {
        isAuthenticating.value = true;
        if (isSignIn.value) {
          // ログイン時の処理
          (await firebase.signInWithEmailAndPassword(
            email: emailController.text,
            password: passwordController.text,
          ))
              .user;
          context.go('/list');
        } else {
          // 新規登録時の処理
          final User? user = (await firebase.createUserWithEmailAndPassword(
            email: emailController.text,
            password: passwordController.text,
          ))
              .user;
          context.go('/mypage');
          await FirebaseFirestore.instance
              .collection('users')
              .doc(user!.uid)
              .set({
            'username': 'ゲスト',
            'email': emailController.text,
          });
          isSignIn.value = true;
        }
      } on FirebaseAuthException catch (error) {
        ScaffoldMessenger.of(context).clearSnackBars();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              error.message ?? Strings.errorAuthentication,
            ),
          ),
        );
        // エラーが発生しているので認証処理は行っていない
        isAuthenticating.value = false;
      }
    }

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Sizes.p44),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              Strings.appTitle,
              style: TextStyle(
                fontSize: Sizes.p48,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: Sizes.p80),
            EmailTextForm(
              formKey: emailFormKey,
              controller: emailController,
            ),
            const SizedBox(height: Sizes.p20),
            PasswordTextForm(
              formKey: passwordFormKey,
              controller: passwordController,
            ),
            const SizedBox(height: Sizes.p40),
            AuthSwitchButton(
              submit: submit,
              isSignIn: isSignIn,
            ),
            const SizedBox(height: Sizes.p20),
            AuthSwitchText(
              isSignIn: isSignIn,
            ),
          ],
        ),
      ),
    );
  }
}
