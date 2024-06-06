import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final name3Provider = Provider<String>((ref) {
  return "Motiur Rahman Mostakim";
});

class HellowWorldConsumerStateful extends ConsumerStatefulWidget {
  const HellowWorldConsumerStateful({super.key});

  @override
  _HellowWorldConsumerStatefulState createState() =>
      _HellowWorldConsumerStatefulState();
}

class _HellowWorldConsumerStatefulState
    extends ConsumerState<HellowWorldConsumerStateful> {
  @override
  void initState() {
    final names = ref.read(name3Provider);
    super.initState();
    print(names);
  }

  @override
  Widget build(BuildContext context) {
    final name3 = ref.watch(name3Provider);
    return Scaffold(
      body: Center(
        child: Text(name3),
      ),
    );
  }
}
