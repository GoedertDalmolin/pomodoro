import 'package:flutter/material.dart';

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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: decrement, child: const Icon(Icons.arrow_downward)),
            Text(
              '${valor.toString()} min',
              style: const TextStyle(fontSize: 18),
            ),
            ElevatedButton(onPressed: increment, child: const Icon(Icons.arrow_upward)),
          ],
        ),
      ],
    );
  }
}
