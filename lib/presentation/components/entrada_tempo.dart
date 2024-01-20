import 'package:flutter/material.dart';

class EntradaTempo extends StatelessWidget {
  final String titulo;
  final int valor;

  const EntradaTempo({
    super.key,
    required this.titulo,
    required this.valor,
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
            ElevatedButton(onPressed: () {}, child: const Icon(Icons.arrow_downward)),
            Text(
              '${valor.toString()} min',
              style: const TextStyle(fontSize: 18),
            ),
            ElevatedButton(onPressed: () {}, child: const Icon(Icons.arrow_upward)),
          ],
        ),
      ],
    );
  }
}
