// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_theme.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AppTheme on _AppTheme, Store {
  Computed<ThemeBase> _$themeComputed;

  @override
  ThemeBase get theme =>
      (_$themeComputed ??= Computed<ThemeBase>(() => super.theme)).value;

  final _$isDarkModeAtom = Atom(name: '_AppTheme.isDarkMode');

  @override
  bool get isDarkMode {
    _$isDarkModeAtom.context.enforceReadPolicy(_$isDarkModeAtom);
    _$isDarkModeAtom.reportObserved();
    return super.isDarkMode;
  }

  @override
  set isDarkMode(bool value) {
    _$isDarkModeAtom.context.conditionallyRunInAction(() {
      super.isDarkMode = value;
      _$isDarkModeAtom.reportChanged();
    }, _$isDarkModeAtom, name: '${_$isDarkModeAtom.name}_set');
  }

  final _$_AppThemeActionController = ActionController(name: '_AppTheme');

  @override
  dynamic setDarkMode(bool value) {
    final _$actionInfo = _$_AppThemeActionController.startAction();
    try {
      return super.setDarkMode(value);
    } finally {
      _$_AppThemeActionController.endAction(_$actionInfo);
    }
  }
}
