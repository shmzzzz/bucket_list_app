import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'due_notifier.g.dart';

@riverpod
class DueNotifier extends _$DueNotifier {
  @override
  DateTime build() {
    return DateTime.now();
  }

  void setDue(DateTime due) {
    state = due;
  }
}
