import 'package:mobx/mobx.dart';
part 'counter_view_model.g.dart';

class CounterViewModelPages = _CounterViewModelPagesBase
    with _$CounterViewModelPages;

abstract class _CounterViewModelPagesBase with Store {
  @observable
  int counter = 0;

  @action
  void sayacArttir() {
    counter++;
  }

  @action
  void sayacAzalt() {
    if (counter > 1) {
      counter--;
    }
  }
}
