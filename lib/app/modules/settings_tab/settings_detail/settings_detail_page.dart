import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'settings_detail_controller.dart';

class SettingsDetailPage extends StatefulWidget {
  static const routeName = '/settings-detail';
  final String title;
  const SettingsDetailPage({Key key, this.title = "SettingsDetail"})
      : super(key: key);

  @override
  _SettingsDetailPageState createState() => _SettingsDetailPageState();
}

class _SettingsDetailPageState
    extends ModularState<SettingsDetailPage, SettingsDetailController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100),
      child: Text(widget.title),
    );
  }
}
