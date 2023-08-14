import 'package:flutter/material.dart';
import 'package:flutter_application_sample/s3.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyWidget3 extends ConsumerWidget {
  const MyWidget3({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s3 = ref.watch(s3NotifierProvider);

    // AsyncValueの時は、各状態を定義可能
    final widget = s3.when(
      data: (d) => Text(d),
      error: (e, s) => Text('エラー$e'), //eがエラー、sがエラーの場所
      loading: () => const Text('準備中'),
    );

    final button = ElevatedButton(
        onPressed: () {
          final notifier = ref.read(s3NotifierProvider.notifier);
          notifier.updateState();
        },
        child: const Text('Button'));

    return Column(
      children: [widget, button],
    );
  }
}
