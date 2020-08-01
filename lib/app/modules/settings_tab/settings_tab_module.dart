import 'package:examplerouternav/app/modules/settings_tab/settings_detail/settings_detail_page.dart';
import 'package:examplerouternav/app/modules/settings_tab/settings_tab_page.dart';

import 'settings_detail/settings_detail_controller.dart';

import 'settings_tab_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SettingsTabModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SettingsDetailController()),
        Bind((i) => SettingsTabController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, __) => SettingsTabPage()),
        Router(SettingsDetailPage.routeName, child: (_, __) => SettingsDetailPage()),
      ];

  static Inject get to => Inject<SettingsTabModule>.of();
}
