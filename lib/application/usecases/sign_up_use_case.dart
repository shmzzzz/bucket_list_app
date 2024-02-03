import 'package:bucket_list_app/presentation/theme/app_strings.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUpUseCase {
  static Future<void> signUp({
    required String email,
    required String password,
    required BuildContext context,
    required Function(bool) setSignInStatus,
    required Function(bool) setAuthenticatingStatus,
  }) async {
    final firebase = FirebaseAuth.instance;

    try {
      final User? user = (await firebase.createUserWithEmailAndPassword(
        email: email,
        password: password,
      ))
          .user;
      context.go('/mypage');
      await FirebaseFirestore.instance.collection('users').doc(user!.uid).set({
        'username': 'ゲスト',
        'email': email,
      });
      setSignInStatus(true);
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
