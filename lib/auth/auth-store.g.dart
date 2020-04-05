// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth-store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AuthStore on _AuthStore, Store {
  final _$tokenAtom = Atom(name: '_AuthStore.token');

  @override
  String get token {
    _$tokenAtom.context.enforceReadPolicy(_$tokenAtom);
    _$tokenAtom.reportObserved();
    return super.token;
  }

  @override
  set token(String value) {
    _$tokenAtom.context.conditionallyRunInAction(() {
      super.token = value;
      _$tokenAtom.reportChanged();
    }, _$tokenAtom, name: '${_$tokenAtom.name}_set');
  }

  final _$errorAtom = Atom(name: '_AuthStore.error');

  @override
  String get error {
    _$errorAtom.context.enforceReadPolicy(_$errorAtom);
    _$errorAtom.reportObserved();
    return super.error;
  }

  @override
  set error(String value) {
    _$errorAtom.context.conditionallyRunInAction(() {
      super.error = value;
      _$errorAtom.reportChanged();
    }, _$errorAtom, name: '${_$errorAtom.name}_set');
  }

  final _$loadingAtom = Atom(name: '_AuthStore.loading');

  @override
  bool get loading {
    _$loadingAtom.context.enforceReadPolicy(_$loadingAtom);
    _$loadingAtom.reportObserved();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.context.conditionallyRunInAction(() {
      super.loading = value;
      _$loadingAtom.reportChanged();
    }, _$loadingAtom, name: '${_$loadingAtom.name}_set');
  }

  final _$updateTokenAsyncAction = AsyncAction('updateToken');

  @override
  Future updateToken(String _token) {
    return _$updateTokenAsyncAction.run(() => super.updateToken(_token));
  }

  final _$signInAsyncAction = AsyncAction('signIn');

  @override
  Future<void> signIn(String email, String password) {
    return _$signInAsyncAction.run(() => super.signIn(email, password));
  }

  final _$_AuthStoreActionController = ActionController(name: '_AuthStore');

  @override
  void signOut() {
    final _$actionInfo = _$_AuthStoreActionController.startAction();
    try {
      return super.signOut();
    } finally {
      _$_AuthStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void resetError() {
    final _$actionInfo = _$_AuthStoreActionController.startAction();
    try {
      return super.resetError();
    } finally {
      _$_AuthStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'token: ${token.toString()},error: ${error.toString()},loading: ${loading.toString()}';
    return '{$string}';
  }
}