import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 's1.g.dart';

// Riverpod Ver.2では、watchされなくなると、値を自動的に捨てられる
// Riverpod(keepAlive: true) にすれば、状態を誰からもwatchされなくても状態を維持可能になる
// 変更時はもう一度ビルドランナーコマンドの実行が必要
@riverpod
class S1Notifier extends _$S1Notifier {
  @override
  // データを準備する時の処理
  int build() {
    // データが捨てられた時の処理
    ref.onDispose(() {
      debugPrint('watchされてないので、データを捨てます');
    });

    return 0;
  }

  void updateState() {
    final oldState = state;
    final newState = oldState + 1;
    state = newState;
  }
}
