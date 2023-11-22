import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/example/consumer/consumer_model.dart';

class ConsumerExample extends StatelessWidget {
  const ConsumerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ConsumerModel(),
      child: Consumer<ConsumerModel>(
        builder: (context, consumerModel, child) =>
            Text(consumerModel.count.toString()),
      ),
    );
  }
}
