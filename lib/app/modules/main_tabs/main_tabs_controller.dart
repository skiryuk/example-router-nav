import 'package:mobx/mobx.dart';

part 'main_tabs_controller.g.dart';

class MainTabsController = _MainTabsControllerBase with _$MainTabsController;

abstract class _MainTabsControllerBase with Store {
  @observable
  int selectedTabIdx = 0;

  @observable
  String initialRoute;

  @action
  changeTabIdx(int selectedTabIdx) {
    this.selectedTabIdx = selectedTabIdx;
  }

  @action
  setInitialRoute(String route) {
    this.initialRoute = route;
  }
}
