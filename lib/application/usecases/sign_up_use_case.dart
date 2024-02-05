import 'package:bucket_list_app/infrastructure/firebase/firebase_auth_error_handler.dart';
import 'package:bucket_list_app/infrastructure/firebase/firebase_auth_ext.dart';
import 'package:bucket_list_app/presentation/router/router.dart';
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
      context.go(RoutePaths.routeMyPage);
      await FirebaseFirestore.instance.collection('users').doc(user!.uid).set({
        'username': 'ゲスト',
        'email': email,
      });
      setSignInStatus(true);
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
