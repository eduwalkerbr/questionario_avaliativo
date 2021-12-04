import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String descricao;
  final void Function() funcao;

  const Resposta({
    required this.descricao,
    required this.funcao,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.blue,
            textStyle: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            )),
        onPressed: funcao,
        child: Text(descricao),
      ),
    );
  }
}
