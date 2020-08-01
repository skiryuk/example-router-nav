
import 'menu_tab_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'menu_tab_page.dart';

class MenuTabModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => MenuTabController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, __) => MenuTabPage()),
      ];

  static Inject get to => Inject<MenuTabModule>.of();
}
