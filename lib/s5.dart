import 'package:riverpod_annotation/riverpod_annotation.dart';
part 's5.g.dart';

@riverpod
class S5Notifier extends _$S5Notifier {
  @override
  // データを準備する時の処理
  Model build() {
    return Model();
  }

  void updateState() {
    final oldState = state;
    final newNumber = oldState.number + 1;
    oldState.number = newNumber;
    print(state.number);
    final newState = oldState;
    state = newState;
  }
}

class Model {
  int number = 0;
  String moji = 'aaa';
  List<int> list = [1, 2, 3];
}
