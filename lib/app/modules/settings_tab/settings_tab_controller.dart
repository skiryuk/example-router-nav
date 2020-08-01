import 'package:mobx/mobx.dart';

part 'settings_tab_controller.g.dart';

class SettingsTabController = _SettingsTabControllerBase
    with _$SettingsTabController;

abstract class _SettingsTabControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
