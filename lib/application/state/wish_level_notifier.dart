import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'wish_level_notifier.g.dart';

@riverpod
class WishLevelNotifier extends _$WishLevelNotifier {
  @override
  int build() {
    // 設定したい初期値を定義する
    return 1;
  }

  void setWishLevel(int level) {
    state = level;
  }
}
