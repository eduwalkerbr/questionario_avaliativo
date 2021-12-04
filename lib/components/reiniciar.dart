import 'package:flutter/material.dart';

class Reiniciar extends StatelessWidget {
  final String descricao;
  void Function()? funcao;

  Reiniciar({
    required this.descricao,
    this.funcao,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(50),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.red[400],
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
