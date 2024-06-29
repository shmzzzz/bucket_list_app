import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'title_notifier.g.dart';

@riverpod
class TitleNotifier extends _$TitleNotifier {
  @override
  String build() {
    return '';
  }

  void setTitle(String title) {
    state = title;
  }

  String getTitle() {
    return state;
  }
}
