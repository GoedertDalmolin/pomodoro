// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pomodoro.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PomodoroStore on PomodoroStoreBase, Store {
  late final _$iniciadoAtom =
      Atom(name: 'PomodoroStoreBase.iniciado', context: context);

  @override
  bool get iniciado {
    _$iniciadoAtom.reportRead();
    return super.iniciado;
  }

  @override
  set iniciado(bool value) {
    _$iniciadoAtom.reportWrite(value, super.iniciado, () {
      super.iniciado = value;
    });
  }

  late final _$minutosAtom =
      Atom(name: 'PomodoroStoreBase.minutos', context: context);

  @override
  int get minutos {
    _$minutosAtom.reportRead();
    return super.minutos;
  }

  @override
  set minutos(int value) {
    _$minutosAtom.reportWrite(value, super.minutos, () {
      super.minutos = value;
    });
  }

  late final _$segundosAtom =
      Atom(name: 'PomodoroStoreBase.segundos', context: context);

  @override
  int get segundos {
    _$segundosAtom.reportRead();
    return super.segundos;
  }

  @override
  set segundos(int value) {
    _$segundosAtom.reportWrite(value, super.segundos, () {
      super.segundos = value;
    });
  }

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

  late final _$tipoIntervaloAtom =
      Atom(name: 'PomodoroStoreBase.tipoIntervalo', context: context);

  @override
  TipoIntervalo get tipoIntervalo {
    _$tipoIntervaloAtom.reportRead();
    return super.tipoIntervalo;
  }

  @override
  set tipoIntervalo(TipoIntervalo value) {
    _$tipoIntervaloAtom.reportWrite(value, super.tipoIntervalo, () {
      super.tipoIntervalo = value;
    });
  }

  late final _$PomodoroStoreBaseActionController =
      ActionController(name: 'PomodoroStoreBase', context: context);

  @override
  dynamic iniciarContagem() {
    final _$actionInfo = _$PomodoroStoreBaseActionController.startAction(
        name: 'PomodoroStoreBase.iniciarContagem');
    try {
      return super.iniciarContagem();
    } finally {
      _$PomodoroStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic pararContagem() {
    final _$actionInfo = _$PomodoroStoreBaseActionController.startAction(
        name: 'PomodoroStoreBase.pararContagem');
    try {
      return super.pararContagem();
    } finally {
      _$PomodoroStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic reiniciarContagem() {
    final _$actionInfo = _$PomodoroStoreBaseActionController.startAction(
        name: 'PomodoroStoreBase.reiniciarContagem');
    try {
      return super.reiniciarContagem();
    } finally {
      _$PomodoroStoreBaseActionController.endAction(_$actionInfo);
    }
  }

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
iniciado: ${iniciado},
minutos: ${minutos},
segundos: ${segundos},
tempoTrabalho: ${tempoTrabalho},
tempoDescanso: ${tempoDescanso},
tipoIntervalo: ${tipoIntervalo}
    ''';
  }
}
