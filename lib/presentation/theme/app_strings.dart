/// 文字列一覧

class AppStrings {
  static const appTitle = 'Bucket List';
  static const appBarTitle = 'My Bucket List 100';
  static const signIn = 'SIGN IN';
  static const signUp = 'SIGN UP';
  static const authSignIn = 'アカウントをお持ちの方はこちら';
  static const authSignUp = '新規登録はこちら';
  static const email = 'Email';
  static const password = 'Password';
  static const errorEmail = 'メールアドレスを入力してください。';
  static const errorPassword = 'パスワードを入力してください。';
  static const empty = '';

  /// FirebaseAuth関連のエラーメッセージ
  static const emailAlreadyInUseMessage = 'すでに登録されているメールアドレスです。\nサインインしてください。';
  static const invalidEmailMessage = '無効なメールアドレスです。';
  static const operationNotAllowedMessage = 'メールアドレスまたはパスワードが無効です。';
  static const weakPasswordMessage = 'より強力なパスワードを入力してください。';
  static const userDisabledMessage = 'このユーザーは利用できません。';
  static const userNotFoundMessage = 'このユーザーは登録されていません。';
  static const wrongPasswordMessage = 'パスワードが間違っています。\n正しいパスワードを入力してください。';
  static const accountExistsWithDifferentCredentialMessage =
      'すでに登録されているメールアドレスです。\nサインインしてください。';
  static const invalidCredentialMessage = 'パスワードが間違っています。\n正しいパスワードを入力してください。';
  static const unknownMessage = '予期しないエラーが発生しました。';

  /// 共通Widget関連
  static const listTitle = '一覧';
  static const categoryTitle = 'カテゴリ';
  static const wantedTitle = 'やりたい度';

  static const navDrawerListSection = 'リスト';
  static const navDrawerAchievedListSection = '達成済みリスト';
  static const navDrawerMyPageSection = 'マイページ';
  static const navDrawerListItemTitle = '一覧';
  static const navDrawerCategoryItemTitle = 'カテゴリ';
  static const navDrawerWantedItemTitle = 'やりたい度';
  static const navDrawerAchievedListItemTitle = '一覧';
  static const navDrawerMyPageItemTitle = '設定';

  static const bottomNavListLabel = 'リスト';
  static const bottomNavAchievedLabel = '達成済み';
  static const bottomNavMyPageLabel = 'マイページ';
}
