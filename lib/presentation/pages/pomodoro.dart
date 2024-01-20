import 'package:flutter/material.dart';
import 'package:pomodoro/presentation/components/cronometro.dart';
import 'package:pomodoro/presentation/components/entrada_tempo.dart';

class PomodoroPage extends StatelessWidget {
  const PomodoroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pomodoro'),
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Cronometro(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                EntradaTempo(
                  titulo: 'Trabalho',
                  valor: 25,
                ),
                EntradaTempo(
                  titulo: 'Descanço',
                  valor: 5,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
