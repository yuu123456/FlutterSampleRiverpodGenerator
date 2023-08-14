import 'package:flutter/material.dart';
import 'package:flutter_application_sample/s2.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyWidget2 extends ConsumerWidget {
  const MyWidget2({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s2 = ref.watch(s2NotifierProvider);

    final listView = ListView.builder(
      itemCount: s2.length,
      itemBuilder: (context, index) {
        final text = Text(s2[index]);
        return Card(child: text);
      },
    );

    final button = FloatingActionButton(onPressed: () {
      final notifier = ref.read(s2NotifierProvider.notifier);
      notifier.updateState();
    });

    return Scaffold(
      floatingActionButton: button,
      body: listView,
    );
  }
}
