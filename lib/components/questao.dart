import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String descricao;

  const Questao({required this.descricao});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.08,
      margin: const EdgeInsets.all(10),
      child: Text(
        descricao,
        style: const TextStyle(
          fontSize: 23,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
