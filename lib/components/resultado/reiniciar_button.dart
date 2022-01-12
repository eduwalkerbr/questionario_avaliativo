import 'package:flutter/material.dart';

class ReiniciarButton extends StatelessWidget {
  final String descricao;
  void Function()? funcao;

  ReiniciarButton({
    required this.descricao,
    this.funcao,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //Ocupa todo o espaçamento
      width: double.infinity,
      //Adiciona margem em todas as direções
      margin: const EdgeInsets.all(50),
      //Criar o botão de reiniciar
      child: ElevatedButton(
        //Estilo do botão
        style: ElevatedButton.styleFrom(
          elevation: 10,
          primary: Colors.blue,
          //Estilo do texto do botão
          textStyle: const TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        //Função ao pressionaro botão
        onPressed: funcao,
        //Texto do botão
        child: Text(descricao),
      ),
    );
  }
}
