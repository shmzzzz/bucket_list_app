import 'package:bucket_list_app/presentation/theme/app_strings.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignInUseCase {
  static Future<void> signIn({
    required String email,
    required String password,
    required BuildContext context,
    required Function(bool) setAuthenticatingStatus,
  }) async {
    final firebase = FirebaseAuth.instance;

    try {
      setAuthenticatingStatus(true);

      (await firebase.signInWithEmailAndPassword(
        email: email,
        password: password,
      ))
          .user;
      context.go('/list');
    } on FirebaseAuthException catch (error) {
      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            error.message ?? AppStrings.errorAuthentication,
          ),
        ),
      );
      // エラーが発生しているので認証処理は行っていない
      setAuthenticatingStatus(false);
    }
  }
}
