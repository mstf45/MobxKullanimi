import 'package:flutter/material.dart';

import 'counter_view_model.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CounterPage extends StatelessWidget {
  final CounterViewModelPages cm = CounterViewModelPages();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          bodyAlani,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => cm.sayacAzalt(),
                child: const Icon(Icons.remove),
              ),
              const SizedBox(width: 20),
              ElevatedButton(
                onPressed: () => cm.sayacArttir(),
                child: const Icon(Icons.add),
              ),
            ],
          ),
        ],
      ),
      appBar: AppBar(
        title: const Text('Mobx Kullanımı'),
        centerTitle: true,
      ),
    );
  }

  Widget get bodyAlani {
    return Observer(
      builder: (_) {
        return Center(
          child: Text(
            cm.counter.toString(),
            style: const TextStyle(fontSize: 30),
          ),
        );
      },
    );
  }
}
