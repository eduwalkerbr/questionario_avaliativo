import 'package:flutter/material.dart';

class RespostaButton extends StatelessWidget {
  final String descricao;
  final void Function() funcao;

  const RespostaButton({
    required this.descricao,
    required this.funcao,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //Ocupa todo o espaçamento
      width: double.infinity,
      //Adiciona margens específicas
      margin: const EdgeInsets.fromLTRB(50, 3, 50, 3),
      //Botão para Reiniciar Questionário
      child: ElevatedButton(
        //Estilo do botão
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          elevation: 10,
          //Estilo do texto do botão
          textStyle: const TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        //Função e Texto do Botão
        onPressed: funcao,
        child: Text(descricao),
      ),
    );
  }
}
