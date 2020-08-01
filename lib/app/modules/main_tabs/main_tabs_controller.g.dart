// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_tabs_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MainTabsController on _MainTabsControllerBase, Store {
  final _$selectedTabIdxAtom =
      Atom(name: '_MainTabsControllerBase.selectedTabIdx');

  @override
  int get selectedTabIdx {
    _$selectedTabIdxAtom.reportRead();
    return super.selectedTabIdx;
  }

  @override
  set selectedTabIdx(int value) {
    _$selectedTabIdxAtom.reportWrite(value, super.selectedTabIdx, () {
      super.selectedTabIdx = value;
    });
  }

  final _$initialRouteAtom = Atom(name: '_MainTabsControllerBase.initialRoute');

  @override
  String get initialRoute {
    _$initialRouteAtom.reportRead();
    return super.initialRoute;
  }

  @override
  set initialRoute(String value) {
    _$initialRouteAtom.reportWrite(value, super.initialRoute, () {
      super.initialRoute = value;
    });
  }

  final _$_MainTabsControllerBaseActionController =
      ActionController(name: '_MainTabsControllerBase');

  @override
  dynamic changeTabIdx(int selectedTabIdx) {
    final _$actionInfo = _$_MainTabsControllerBaseActionController.startAction(
        name: '_MainTabsControllerBase.changeTabIdx');
    try {
      return super.changeTabIdx(selectedTabIdx);
    } finally {
      _$_MainTabsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setInitialRoute(String route) {
    final _$actionInfo = _$_MainTabsControllerBaseActionController.startAction(
        name: '_MainTabsControllerBase.setInitialRoute');
    try {
      return super.setInitialRoute(route);
    } finally {
      _$_MainTabsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedTabIdx: ${selectedTabIdx},
initialRoute: ${initialRoute}
    ''';
  }
}
