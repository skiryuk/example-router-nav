
import 'main_tabs_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'main_tabs_page.dart';

class MainTabsModule extends ChildModule {
  static const routeName = '/main-tabs';

  @override
  List<Bind> get binds => [
        Bind((i) => MainTabsController()),
      ];

  @override
  List<Router> get routers => [
    Router(Modular.initialRoute,
        child: (_, args) => MainTabsPage(args.data)),
  ];

  static Inject get to => Inject<MainTabsModule>.of();
}
