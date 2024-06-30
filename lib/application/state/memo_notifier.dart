import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'memo_notifier.g.dart';

@riverpod
class MemoNotifier extends _$MemoNotifier {
  @override
  String build() {
    return '';
  }

  void setMemo(String memo) {
    state = memo;
  }

  String getMemo() {
    return state;
  }
}
