import 'package:examplerouternav/app/core/models/route/main_tabs_args.dart';
import 'package:examplerouternav/app/modules/main_tabs/main_tabs_module.dart';
import 'package:examplerouternav/app/modules/settings_tab/settings_detail/settings_detail_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'menu_tab_controller.dart';

class MenuTabPage extends StatefulWidget {
  final String title;

  const MenuTabPage({Key key, this.title = "MenuTab"}) : super(key: key);

  @override
  _MenuTabPageState createState() => _MenuTabPageState();
}

class _MenuTabPageState extends ModularState<MenuTabPage, MenuTabController> {
  final _textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100),
      child: Column(
        children: <Widget>[
          GestureDetector(
              onTap: () {
                Modular.to.pushReplacementNamed(MainTabsModule.routeName,
                    arguments: MainTabsArgs(2,
                        initialRoute: SettingsDetailPage.routeName));
              },
              child: Text(widget.title)),
          CupertinoTextField(
            controller: _textFieldController,
          )
        ],
      ),
    );
  }
}
