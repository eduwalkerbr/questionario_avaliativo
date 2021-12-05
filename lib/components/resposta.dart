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
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(50, 3, 50, 3),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          textStyle: const TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        onPressed: funcao,
        child: Text(descricao),
      ),
    );
  }
}
