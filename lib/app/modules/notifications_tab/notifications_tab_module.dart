
import 'notifications_tab_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'notifications_tab_page.dart';

class NotificationsTabModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => NotificationsTabController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, __) => NotificationsTabPage()),
      ];

  static Inject get to => Inject<NotificationsTabModule>.of();
}
