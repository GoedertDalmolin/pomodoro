import 'package:flutter/material.dart';
import 'package:pomodoro/presentation/components/cronometro.dart';
import 'package:pomodoro/presentation/components/entrada_tempo.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                EntradaTempo(
                  titulo: 'Trabalho',
                  valor: store.tempoTrabalho,
                ),
                EntradaTempo(
                  titulo: 'Descanço',
                  valor: store.tempoDescanso,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
