import 'package:flutter/material.dart';
import 'package:questionario_avaliativo/components/resultado/reiniciar_button.dart';

import 'mensagem_result.dart';

class Resultado extends StatelessWidget {
  final void Function() funcao;
  final int pontuacao;
  const Resultado({required this.funcao, required this.pontuacao});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        //Ajusta alinhamento de ambos os eixos para central
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //Texto central
          const Text(
            "Sem mais perguntas a responder!",
            //Estilos do Texto
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.redAccent,
            ),
          ),
          //Texto do resultado
          MensagemResult(
            pontuacao: pontuacao,
          ),
          //Botão para reinicio do questionário
          ReiniciarButton(
            descricao: "Reiniciar o Questionário ?",
            funcao: funcao,
          ),
        ],
      ),
    );
  }
}
