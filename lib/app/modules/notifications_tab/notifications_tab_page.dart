import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'notifications_tab_controller.dart';

class NotificationsTabPage extends StatefulWidget {
  final String title;
  const NotificationsTabPage({Key key, this.title = "NotificationsTab"})
      : super(key: key);

  @override
  _NotificationsTabPageState createState() => _NotificationsTabPageState();
}

class _NotificationsTabPageState
    extends ModularState<NotificationsTabPage, NotificationsTabController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100),
      child: Text(widget.title),
    );
  }
}
