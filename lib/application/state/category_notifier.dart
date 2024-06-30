import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'category_notifier.g.dart';

@riverpod
class CategoryNotifier extends _$CategoryNotifier {
  @override
  int build() {
    return 0;
  }

  void setCategoryIndex(int index) {
    state = index;
  }

  int getCategoryIndex() {
    return state;
  }
}
