import 'package:flutter/material.dart';

class MensagemResult extends StatelessWidget {
  final int pontuacao;
  const MensagemResult({required this.pontuacao});

  String get result {
    if (pontuacao < 15) {
      return "Parabéns!";
    } else if (pontuacao < 30) {
      return "Você foi bem!";
    } else if (pontuacao < 40) {
      return "Impressionante";
    } else {
      return "Nível Jedi!";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Text(
        result,
        //Estilo do Texto
        style: const TextStyle(
          fontSize: 40,
          color: Colors.red,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
