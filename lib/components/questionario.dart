import 'package:flutter/material.dart';
import 'package:questionario_avaliativo/components/questao.dart';
import 'package:questionario_avaliativo/components/resposta.dart';

import '../questions_list.dart';

class Questionario extends StatelessWidget {
  final int questSel;
  final void Function(int pontuacao) responder;

  const Questionario({
    required this.questSel,
    required this.responder,
  });

  @override
  Widget build(BuildContext context) {
    final perguntas = Questions_list.getQuestionList();
    List<Map<String, Object>> respList =
        perguntas[questSel].cast()['respostas'];

    return Column(
      children: [
        Questao(
          descricao: perguntas[questSel]['questao'].toString(),
        ),
        ...respList
            .map((resp) => Resposta(
                  descricao: resp['conteudo'].toString(),
                  funcao: () => responder(int.parse(resp['nota'].toString())),
                ))
            .toList(),
      ],
    );
  }
}
