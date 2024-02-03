import 'package:bucket_list_app/infrastructure/firebase/firebase_auth_error_handler.dart';
import 'package:bucket_list_app/infrastructure/firebase/firebase_auth_ext.dart';
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
      var message = FirebaseAuthExt.fromCode(error.code).message;
      FirebaseAuthErrorHandler.handleFirebaseAuthError(
        context: context,
        message: message,
        setAuthenticatingStatus: setAuthenticatingStatus,
      );
    }
  }
}
