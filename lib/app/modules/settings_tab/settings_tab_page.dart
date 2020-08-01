import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'settings_tab_controller.dart';

class SettingsTabPage extends StatefulWidget {
  final String title;
  const SettingsTabPage({Key key, this.title = "SettingsTab"})
      : super(key: key);

  @override
  _SettingsTabPageState createState() => _SettingsTabPageState();
}

class _SettingsTabPageState
    extends ModularState<SettingsTabPage, SettingsTabController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100),
      child: Text(widget.title),
    );
  }
}
