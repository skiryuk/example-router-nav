import 'package:examplerouternav/app/core/icons/custom_icons_icons.dart';
import 'package:examplerouternav/app/core/models/route/main_tabs_args.dart';
import 'package:examplerouternav/app/modules/menu_tab/menu_tab_module.dart';
import 'package:examplerouternav/app/modules/notifications_tab/notifications_tab_module.dart';
import 'package:examplerouternav/app/modules/settings_tab/settings_tab_module.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'main_tabs_controller.dart';

class MainTabsPage extends StatefulWidget {
  final MainTabsArgs args;

  const MainTabsPage(this.args);

  @override
  _MainTabsPageState createState() => _MainTabsPageState();
}

class _MainTabsPageState
    extends ModularState<MainTabsPage, MainTabsController> {
  List<Widget> _tabs;

  @override
  void initState() {
    super.initState();

    _tabs = [
      RouterOutlet(
        module: MenuTabModule(),
        keepAlive: true,
      ),
      RouterOutlet(module: NotificationsTabModule(), keepAlive: true),
      Observer(
          builder: (_) => RouterOutlet(
              module: SettingsTabModule(),
              initialRoute: controller.initialRoute,
              keepAlive: true)),
    ];

    SchedulerBinding.instance.addPostFrameCallback((_) {
      controller
          .setInitialRoute(widget.args?.initialRoute ?? Modular.initialRoute);
      controller.changeTabIdx(widget.args?.selectedTabId ?? 0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => CupertinoTabScaffold(
          tabBuilder: (BuildContext context, int index) => _tabs[index],
          controller:
              CupertinoTabController(initialIndex: controller.selectedTabIdx),
          tabBar: CupertinoTabBar(
              currentIndex: controller.selectedTabIdx,
              backgroundColor: const Color(0xfff8f8f8),
              activeColor: const Color(0xff94775A),
              onTap: (int idx) {
                controller.changeTabIdx(idx);
              },
              items: [
                BottomNavigationBarItem(
                    icon: Icon(
                      CustomIcons.menu,
                      size: 20,
                    ),
                    title: Container(width: 0, height: 0, child: Text('Menu'))),
                BottomNavigationBarItem(
                    icon: Icon(CustomIcons.bell, size: 20),
                    title: Container(
                        width: 0, height: 0, child: Text('Notifications'))),
                BottomNavigationBarItem(
                    icon: Icon(CustomIcons.gear, size: 20),
                    title: Container(
                        width: 0, height: 0, child: Text('Settings'))),
              ])),
    );
  }
}
