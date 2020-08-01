import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      navigatorKey: Modular.navigatorKey,
      initialRoute: '/',
      onGenerateRoute: Modular.generateRoute,
    );
  }
}
