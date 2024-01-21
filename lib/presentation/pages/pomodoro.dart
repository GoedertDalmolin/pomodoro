import 'package:flutter/material.dart';
import 'package:pomodoro/presentation/components/cronometro.dart';
import 'package:pomodoro/presentation/components/entrada_tempo.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class PomodoroPage extends StatelessWidget {
  const PomodoroPage({super.key});

  @override
  Widget build(BuildContext context) {

    final store = Provider.of<PomodoroStore>(context);

    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Pomodoro'),
      // ),
      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: Cronometro(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40.0),
            child: Observer(
              builder: (_) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    EntradaTempo(
                      titulo: 'Trabalho',
                      valor: store.tempoTrabalho,
                      increment: store.iniciado && store.estaTrabalhando() ? null :  store.incrementarTempoTrabalho ,
                      decrement: store.iniciado && store.estaTrabalhando() ? null : store.decrementarTempoTrabalho,
                    ),
                    EntradaTempo(
                      titulo: 'Descanso',
                      valor: store.tempoDescanso,
                      increment: store.iniciado && store.estaDescansando() ? null : store.incrementarTempoDescanso,
                      decrement: store.iniciado && store.estaDescansando() ? null : store.decrementarTempoDescanso,
                    ),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
