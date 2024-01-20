import 'package:mobx/mobx.dart';

part 'pomodoro.store.g.dart';

class PomodoroStore = PomodoroStoreBase with _$PomodoroStore;

abstract class PomodoroStoreBase with Store {
  @observable
  bool iniciado = false;

  @observable
  int minutos = 2;

  @observable
  int segundos = 0;

  @observable
  int tempoTrabalho = 2;

  @observable
  int tempoDescanso = 1;

  @action
  iniciarContagem() {
    iniciado = true;
  }

  @action
  pararContagem() {
    iniciado = false;
  }

  @action
  incrementarTempoTrabalho() {
    tempoTrabalho++;
  }

  @action
  decrementarTempoTrabalho() {
    tempoTrabalho--;
  }

  @action
  incrementarTempoDescanso() {
    tempoDescanso++;
  }

  @action
  decrementarTempoDescanso() {
    tempoDescanso--;
  }
}
