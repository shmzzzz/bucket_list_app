import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final authProvider = Provider<FirebaseAuth>(
  (_) => FirebaseAuth.instance,
);
