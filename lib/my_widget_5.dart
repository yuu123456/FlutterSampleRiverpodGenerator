import 'package:flutter/material.dart';
import 'package:flutter_application_sample/s5.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyWidget5 extends ConsumerWidget {
  const MyWidget5({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s5 = ref.watch(s5NotifierProvider).number;

    final button = ElevatedButton(
        onPressed: () {
          // read：読み取る、関数スコープで使用する
          final notifier = ref.read(s5NotifierProvider.notifier);
          notifier.updateState();
        },
        child: const Text('ボタン'));

    return Column(
      children: [
        Text('$s5'),
        button,
      ],
    );
  }
}
