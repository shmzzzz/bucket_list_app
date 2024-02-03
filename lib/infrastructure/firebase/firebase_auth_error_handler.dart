import 'package:flutter/material.dart';

class FirebaseAuthErrorHandler {
  static void handleFirebaseAuthError({
    required BuildContext context,
    required String message,
    required Function(bool) setAuthenticatingStatus,
  }) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
        ),
      ),
    );
    setAuthenticatingStatus(false);
  }
}
