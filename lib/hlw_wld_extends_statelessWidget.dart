import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final name1Provider = Provider((ref) {
  return "MR Mostakim";
});

class HellowWorldStateless extends StatelessWidget {
  const HellowWorldStateless({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(builder: (context, ref, child) {
        final name1 = ref.watch(name1Provider);
        return Center(child: Text(name1));
      }),
    );
  }
}
