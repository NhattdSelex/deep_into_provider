import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

base class Counter {
  int count = 0;
}

class ProviderExample extends StatelessWidget {
  const ProviderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => Counter(),
      child: Builder(builder: (context) {
        return const _providerex();
      }),
    );
  }
}

class _providerex extends StatelessWidget {
  const _providerex();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("this is example about provider"),
      ),
      body: Text(context.read<Counter>().count.toString()),
    );
  }
}
