import 'package:flutter/material.dart';

class CronometroBotao extends StatelessWidget {
  final String texto;
  final IconData icone;
  final Function()? onClick;

  const CronometroBotao({
    super.key,
    required this.texto,
    required this.icone,
    this.onClick,
  });

  @override
  Widget build(BuildContext context) {

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        textStyle: const TextStyle(fontSize: 25),
      ),
      onPressed: onClick,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(
              icone,
              size: 25,
            ),
          ),
          Text(
            texto,
            style: const TextStyle(
                // fontSize: 120,
                // color: Colors.white,
                ),
          ),
        ],
      ),
    );
  }
}
