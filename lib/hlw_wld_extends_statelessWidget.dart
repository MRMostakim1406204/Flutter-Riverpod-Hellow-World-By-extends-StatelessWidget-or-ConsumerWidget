import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_hellow_world/hlw_wld_extends_ConsumerStateFulWidget.dart';

final name1Provider = Provider((ref) {
  return "MR Mostakim";
});

class HellowWorldStateless extends StatelessWidget {
  const HellowWorldStateless({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer(builder: (context, ref, child) {
            final name1 = ref.watch(name1Provider);
            return Center(child: Text(name1));
          }),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const HellowWorldConsumerStateful()));
              },
              child: const Text("Hellow World extends ConsumerStatefulWidget"))
        ],
      ),
    );
  }
}
