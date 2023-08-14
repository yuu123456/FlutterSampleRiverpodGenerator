import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'model.dart';
part 's5.g.dart';

@riverpod
class S5Notifier extends _$S5Notifier {
  @override
  // データを準備する時の処理
  Model build() {
    return const Model();
  }

  void updateState() {
    final oldState = state;
    final newNumber = oldState.number + 1;
    state = Model(number: newNumber);
    print(state);
  }
}
