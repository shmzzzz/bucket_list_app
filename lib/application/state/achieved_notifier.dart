import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'achieved_notifier.g.dart';

@riverpod
class AchievedNotifier extends _$AchievedNotifier {
  @override
  bool build() {
    return false;
  }

  void toggleState() {
    state = !state;
  }

  void isAchieved() {
    state = true;
  }

  void isNotAchieved() {
    state = false;
  }
}
