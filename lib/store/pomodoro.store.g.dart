// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pomodoro.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PomodoroStore on PomodoroStoreBase, Store {
  late final _$tempoTrabalhoAtom =
      Atom(name: 'PomodoroStoreBase.tempoTrabalho', context: context);

  @override
  int get tempoTrabalho {
    _$tempoTrabalhoAtom.reportRead();
    return super.tempoTrabalho;
  }

  @override
  set tempoTrabalho(int value) {
    _$tempoTrabalhoAtom.reportWrite(value, super.tempoTrabalho, () {
      super.tempoTrabalho = value;
    });
  }

  late final _$tempoDescansoAtom =
      Atom(name: 'PomodoroStoreBase.tempoDescanso', context: context);

  @override
  int get tempoDescanso {
    _$tempoDescansoAtom.reportRead();
    return super.tempoDescanso;
  }

  @override
  set tempoDescanso(int value) {
    _$tempoDescansoAtom.reportWrite(value, super.tempoDescanso, () {
      super.tempoDescanso = value;
    });
  }

  late final _$PomodoroStoreBaseActionController =
      ActionController(name: 'PomodoroStoreBase', context: context);

  @override
  dynamic incrementarTempoTrabalho() {
    final _$actionInfo = _$PomodoroStoreBaseActionController.startAction(
        name: 'PomodoroStoreBase.incrementarTempoTrabalho');
    try {
      return super.incrementarTempoTrabalho();
    } finally {
      _$PomodoroStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic decrementarTempoTrabalho() {
    final _$actionInfo = _$PomodoroStoreBaseActionController.startAction(
        name: 'PomodoroStoreBase.decrementarTempoTrabalho');
    try {
      return super.decrementarTempoTrabalho();
    } finally {
      _$PomodoroStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic incrementarTempoDescanso() {
    final _$actionInfo = _$PomodoroStoreBaseActionController.startAction(
        name: 'PomodoroStoreBase.incrementarTempoDescanso');
    try {
      return super.incrementarTempoDescanso();
    } finally {
      _$PomodoroStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic decrementarTempoDescanso() {
    final _$actionInfo = _$PomodoroStoreBaseActionController.startAction(
        name: 'PomodoroStoreBase.decrementarTempoDescanso');
    try {
      return super.decrementarTempoDescanso();
    } finally {
      _$PomodoroStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
tempoTrabalho: ${tempoTrabalho},
tempoDescanso: ${tempoDescanso}
    ''';
  }
}
