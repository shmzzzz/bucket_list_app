import 'package:bucket_list_app/infrastructure/firebase/firebase_auth_error.dart';
import 'package:bucket_list_app/presentation/theme/app_strings.dart';

extension FirebaseAuthExt on FirebaseAuthError {
  /// 表示用メッセージ取得
  String get message => _messages[this] ?? AppStrings.unknownMessage;

  /// 表示用メッセージ一覧
  static final _messages = {
    FirebaseAuthError.emailAlreadyInUse: AppStrings.emailAlreadyInUseMessage,
    FirebaseAuthError.invalidEmail: AppStrings.invalidEmailMessage,
    FirebaseAuthError.operationNotAllowed:
        AppStrings.operationNotAllowedMessage,
    FirebaseAuthError.weakPassword: AppStrings.weakPasswordMessage,
    FirebaseAuthError.userDisabled: AppStrings.userDisabledMessage,
    FirebaseAuthError.userNotFound: AppStrings.userNotFoundMessage,
    FirebaseAuthError.wrongPassword: AppStrings.wrongPasswordMessage,
    FirebaseAuthError.accountExistsWithDifferentCredential:
        AppStrings.accountExistsWithDifferentCredentialMessage,
    FirebaseAuthError.invalidCredential: AppStrings.invalidCredentialMessage,
    FirebaseAuthError.unknown: AppStrings.unknownMessage,
  };

  /// エラーコードを変換
  static FirebaseAuthError fromCode(String code) {
    switch (code) {
      case 'email-already-in-use':
        return FirebaseAuthError.emailAlreadyInUse;
      case 'invalid-email':
        return FirebaseAuthError.invalidEmail;
      case 'operation-not-allowed':
        return FirebaseAuthError.operationNotAllowed;
      case 'weak-password':
        return FirebaseAuthError.weakPassword;
      case 'user-disabled':
        return FirebaseAuthError.userDisabled;
      case 'user-not-found':
        return FirebaseAuthError.userNotFound;
      case 'wrong-password':
        return FirebaseAuthError.wrongPassword;
      case 'account-exists-with-different-credential':
        return FirebaseAuthError.accountExistsWithDifferentCredential;
      case 'invalid-credential':
        return FirebaseAuthError.invalidCredential;
      default:
        return FirebaseAuthError.unknown;
    }
  }
}
