import 'package:flutter/material.dart';
import 'package:questionario_avaliativo/components/reiniciar.dart';

class Resultado extends StatelessWidget {
  final void Function() funcao;
  final int pontuacao;
  const Resultado({required this.funcao, required this.pontuacao});

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
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Sem mais perguntas a responder!",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
              color: Colors.blue,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            result,
            style: const TextStyle(
              fontSize: 40,
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Reiniciar(
            descricao: "Reiniciar o Questionário ?",
            funcao: funcao,
          ),
        ],
      ),
    );
  }
}
