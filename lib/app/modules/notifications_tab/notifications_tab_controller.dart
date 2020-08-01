import 'package:mobx/mobx.dart';

part 'notifications_tab_controller.g.dart';

class NotificationsTabController = _NotificationsTabControllerBase
    with _$NotificationsTabController;

abstract class _NotificationsTabControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
