import 'package:flutter/material.dart';
import 'package:flutter_application_sample/s1.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyWidget1 extends ConsumerWidget {
  const MyWidget1({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // watch：変化をずっと監視する、値の変化でView更新する。build関数スコープ内でのみ使用する。
    final s1 = ref.watch(s1NotifierProvider);
    // listen：値の変化時に命令できる。build関数スコープ内でのみ使用する。
    ref.listen(s1NotifierProvider, (previous, next) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('$previousから$nextへ変更された')),
      );
    });

    final button = ElevatedButton(
        onPressed: () {
          // read：読み取る、関数スコープで使用する
          final notifier = ref.read(s1NotifierProvider.notifier);
          notifier.updateState();
        },
        child: const Text('ボタン'));

    return Column(
      children: [
        Text('$s1'),
        button,
      ],
    );
  }
}
