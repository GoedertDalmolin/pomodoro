import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class EntradaTempo extends StatelessWidget {
  final String titulo;
  final int valor;
  final Function()? increment;
  final Function()? decrement;

  const EntradaTempo({
    super.key,
    required this.titulo,
    required this.valor,
    this.increment,
    this.decrement,
  });

  @override
  Widget build(BuildContext context) {

  final store = Provider.of<PomodoroStore>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          titulo,
          style: const TextStyle(fontSize: 25),
        ),
        const SizedBox(
          height: 10,
        ),
        Observer(
          builder: (context) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      surfaceTintColor: store.estaTrabalhando() ? Colors.redAccent : Colors.green
                  ),
                  onPressed: decrement,
                  child:  Icon(Icons.arrow_downward, color: store.estaTrabalhando() ? Colors.redAccent : Colors.green,),
                ),
                Text(
                  '${valor.toString()} min',
                  style: const TextStyle(fontSize: 18),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    surfaceTintColor: store.estaTrabalhando() ? Colors.redAccent : Colors.green
                  ),
                  onPressed: increment,
                  child:  Icon(Icons.arrow_upward, color: store.estaTrabalhando() ? Colors.redAccent : Colors.green,),
                ),
              ],
            );
          }
        ),
      ],
    );
  }
}
