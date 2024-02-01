import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends HookWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final firebase = FirebaseAuth.instance;

    final emailFormKey = GlobalKey<FormState>();
    final passwordFormKey = GlobalKey<FormState>();

    final emailController = useTextEditingController(text: '');
    final passwordController = useTextEditingController(text: '');

    final isObscured = useState(true);
    final isLogin = useState(false);
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
        if (isLogin.value) {
          // ログイン時の処理
          (await firebase.signInWithEmailAndPassword(
            email: emailController.value.text,
            password: passwordController.value.text,
          ))
              .user;
          context.go('/list');
        } else {
          // 新規登録時の処理
          final User? user = (await firebase.createUserWithEmailAndPassword(
            email: emailController.value.text,
            password: passwordController.value.text,
          ))
              .user;
          context.go('/mypage');
          await FirebaseFirestore.instance
              .collection('users')
              .doc(user!.uid)
              .set({
            'username': 'ゲスト',
            'email': emailController.value.text,
          });
          isLogin.value = true;
        }
      } on FirebaseAuthException catch (error) {
        ScaffoldMessenger.of(context).clearSnackBars();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(error.message ?? 'Authentication failed'),
          ),
        );
        // エラーが発生しているので認証処理は行っていない
        isAuthenticating.value = false;
      }
    }

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 45),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Bucket List',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 80),
            Form(
              key: emailFormKey,
              child: TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
                keyboardType: TextInputType.emailAddress,
                autocorrect: false,
                textCapitalization: TextCapitalization.none,
                validator: (value) {
                  if (value == null ||
                      value.trim().isEmpty ||
                      !value.contains('@')) {
                    return 'メールアドレスを入力してください。';
                  }
                  return null;
                },
                onSaved: (newValue) {
                  emailController.text = newValue!;
                },
              ),
            ),
            const SizedBox(height: 20),
            Form(
              key: passwordFormKey,
              child: TextFormField(
                controller: passwordController,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: 'Password',
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
                    return 'パスワードを入力してください。';
                  }
                  return null;
                },
                onSaved: (newValue) {
                  passwordController.text = newValue!;
                },
              ),
            ),
            const SizedBox(height: 40),
            OutlinedButton(
              onPressed: submit,
              child: Text(
                isLogin.value ? 'LOGIN' : 'CREATE ACCOUNT',
              ),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                isLogin.value = !isLogin.value;
              },
              child: Center(
                child: Text(
                  isLogin.value ? '新規登録はこちら' : 'アカウントをお持ちの方はこちら',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
