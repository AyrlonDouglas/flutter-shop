import 'package:flutter/material.dart';
import 'package:shop2/providers/counter.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override
  Widget build(BuildContext context) {
    final CounterProvider? provider = CounterProvider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Exemplo Contador',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Text(provider?.state.value.toString() ?? '0'),
          IconButton(
            onPressed: () {
              setState(() {
                provider?.state.inc();
              });
            },
            icon: const Icon(Icons.add),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                provider?.state.dec();
              });
            },
            icon: const Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}
