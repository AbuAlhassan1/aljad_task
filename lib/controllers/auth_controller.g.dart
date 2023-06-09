// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AuthController on AuthControllerBase, Store {
  late final _$isLoggedInAtom =
      Atom(name: 'AuthControllerBase.isLoggedIn', context: context);

  @override
  bool get isLoggedIn {
    _$isLoggedInAtom.reportRead();
    return super.isLoggedIn;
  }

  @override
  set isLoggedIn(bool value) {
    _$isLoggedInAtom.reportWrite(value, super.isLoggedIn, () {
      super.isLoggedIn = value;
    });
  }

  late final _$countAtom =
      Atom(name: 'AuthControllerBase.count', context: context);

  @override
  int get count {
    _$countAtom.reportRead();
    return super.count;
  }

  @override
  set count(int value) {
    _$countAtom.reportWrite(value, super.count, () {
      super.count = value;
    });
  }

  late final _$AuthControllerBaseActionController =
      ActionController(name: 'AuthControllerBase', context: context);

  @override
  void increment() {
    final _$actionInfo = _$AuthControllerBaseActionController.startAction(
        name: 'AuthControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$AuthControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void login() {
    final _$actionInfo = _$AuthControllerBaseActionController.startAction(
        name: 'AuthControllerBase.login');
    try {
      return super.login();
    } finally {
      _$AuthControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void logout() {
    final _$actionInfo = _$AuthControllerBaseActionController.startAction(
        name: 'AuthControllerBase.logout');
    try {
      return super.logout();
    } finally {
      _$AuthControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoggedIn: ${isLoggedIn},
count: ${count}
    ''';
  }
}
