import 'package:mobx/mobx.dart';

part 'settings_detail_controller.g.dart';

class SettingsDetailController = _SettingsDetailControllerBase
    with _$SettingsDetailController;

abstract class _SettingsDetailControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
