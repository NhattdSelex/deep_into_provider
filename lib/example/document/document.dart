import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/example/document/document_model.dart';

class DocumentProvider extends StatelessWidget {
  const DocumentProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DocumentModel(),
      child: Builder(builder: (context) {
        return const DocumentModelWidget();
      }),
    );
  }
}

base class DocumentModelWidget extends StatelessWidget {
  const DocumentModelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        children: [
          IconButton(
              onPressed: () {
                context.read<DocumentModel>().increment();
              },
              icon: const Icon(Icons.add)),
          IconButton(
              onPressed: () {
                context.read<DocumentModel>().decrement();
              },
              icon: const Icon(Icons.remove))
        ],
      ),
      appBar: AppBar(
        title: const Text("document example provider"),
      ),
      body: Center(
        child: Text(context.watch<DocumentModel>().count.toString()),
      ),
    );
  }
}
