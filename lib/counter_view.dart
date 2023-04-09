import 'package:flutter/material.dart';

import 'counter_view_model.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CounterPage extends StatelessWidget {
  final CounterViewModelPages cm = CounterViewModelPages();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: buttonAlani,
      body: bodyAlani,
      appBar: AppBar(
        title: const Text('Mobx Kullanımı'),
        centerTitle: true,
      ),
    );
  }

  Widget get bodyAlani {
    return Observer(builder: (_) {
      return Center(
        child: Text(
          cm.counter.toString(),
          style: TextStyle(fontSize: 30),
        ),
      );
    });
  }

  Widget get buttonAlani {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => cm.sayacArttir(),
    );
  }
}
