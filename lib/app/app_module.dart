import 'package:examplerouternav/app/modules/main_tabs/main_tabs_module.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:examplerouternav/app/app_widget.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: MainTabsModule()),
        Router(MainTabsModule.routeName, module: MainTabsModule())
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
