import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'dart:async';
part 's4.g.dart';

@riverpod
class S4Notifier extends _$S4Notifier {
  @override
  Stream<String> build() {
    final controller = StreamController<String>();
    const sec1 = Duration(seconds: 1);
    final timer = Timer.periodic(sec1, (timer) {
      controller.add('メッセージが${timer.tick}件届いた');
    });
    const sec4 = Duration(seconds: 4);
    Future.delayed(sec4, () {
      timer.cancel();
      controller.sink.close();
    });
    return controller.stream;
  }

  void updateState() async {
    const sec1 = Duration(seconds: 1);
    await Future.delayed(sec1);
    state = const AsyncValue.data('メッセージが５５件届きました');
    await Future.delayed(sec1);
    state = const AsyncValue.data('メッセージが９９件届きました');
  }
}
