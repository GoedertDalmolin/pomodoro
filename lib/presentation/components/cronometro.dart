import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro/presentation/components/cronometro_botao.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class Cronometro extends StatelessWidget {
  const Cronometro({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Container(
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Hora de Trabalhar',
            // textAlign: TextAlign.center,
            style: TextStyle(fontSize: 40, color: Colors.white),
          ),
          const SizedBox(height: 20),
          Text(
            '${store.minutos.toString().padLeft(2, '0')}:${store.segundos.toString().padLeft(2, '0')}',
            style: const TextStyle(
              fontSize: 120,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          Observer(builder: (_) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (!store.iniciado)
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: CronometroBotao(
                      texto: 'Iniciar',
                      icone: Icons.play_arrow,
                      onClick: store.iniciarContagem,
                    ),
                  ),
                if (store.iniciado)
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CronometroBotao(
                      texto: 'Parar',
                      icone: Icons.stop,
                      onClick: store.pararContagem,
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: CronometroBotao(
                    texto: 'Reiniciar',
                    icone: Icons.refresh,
                    // onClick: store.pararContagem,
                  ),
                ),
              ],
            );
          })
        ],
      ),
    );
  }
}
