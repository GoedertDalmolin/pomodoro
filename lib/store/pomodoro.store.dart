import 'package:mobx/mobx.dart';

part 'pomodoro.store.g.dart';

class PomodoroStore = PomodoroStoreBase with _$PomodoroStore;

abstract class PomodoroStoreBase with Store {
  @observable
  int tempoTrabalho = 2;

  @observable
  int tempoDescanso = 1;

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
