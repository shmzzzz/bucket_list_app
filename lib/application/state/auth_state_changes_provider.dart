import 'package:bucket_list_app/application/state/auth_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final authStateChangesProvider = StreamProvider.autoDispose<User?>((ref) {
  final auth = ref.watch(authProvider);
  return auth.authStateChanges();
});
