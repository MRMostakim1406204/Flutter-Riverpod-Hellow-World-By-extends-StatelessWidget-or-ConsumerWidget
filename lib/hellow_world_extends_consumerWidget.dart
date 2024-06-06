import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_hellow_world/hlw_wld_extends_statelessWidget.dart';

final nameProvider = Provider((ref) {
  return "Mostakim";
});

class HellowWorldConsumer extends ConsumerWidget {
  const HellowWorldConsumer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = ref.watch(nameProvider);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(name),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HellowWorldStateless()));
              },
              child: const Text("Hellow World extends StatelessWidget"))
        ],
      ),
    );
  }
}
