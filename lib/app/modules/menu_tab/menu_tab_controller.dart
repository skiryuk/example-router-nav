import 'package:mobx/mobx.dart';

part 'menu_tab_controller.g.dart';

class MenuTabController = _MenuTabControllerBase with _$MenuTabController;

abstract class _MenuTabControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
