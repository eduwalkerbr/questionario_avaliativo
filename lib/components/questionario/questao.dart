import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String descricao;

  const Questao({required this.descricao});

  @override
  Widget build(BuildContext context) {
    return Container(
      //Pega o tamanho total disponível
      width: double.infinity,
      //Utiliza 80% do tamanho disponível da mídia
      height: MediaQuery.of(context).size.height * 0.08,
      //Adiciona margin em todas as direções
      margin: const EdgeInsets.all(15),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        //Borda arredondada com raio de 10
        borderRadius: BorderRadius.circular(5),
        //Gradiente da superior esqueda a inferior direita
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.cyan,
            Colors.blueAccent,
            Colors.blueGrey,
          ],
        ),
      ),
      child: Text(
        descricao,
        //Estilos do texto
        style: const TextStyle(
          fontSize: 21,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
