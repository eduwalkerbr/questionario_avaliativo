import 'package:flutter/material.dart';
import 'package:questionario_avaliativo/components/questionario/questao.dart';
import 'package:questionario_avaliativo/components/questionario/resposta_button.dart';

import '../../model/questions_list.dart';

class Questionario extends StatelessWidget {
  final int questSel;
  final void Function(int pontuacao) responder;

  const Questionario({
    required this.questSel,
    required this.responder,
  });

  @override
  Widget build(BuildContext context) {
    //Map das questões, com suas resposta e notas
    final perguntas = Questions_list.getQuestionList();
    //Obtém um map expecíficos das respostas e notas
    List<Map<String, Object>> respList =
        perguntas[questSel].cast()['respostas'];

    return Column(
      children: [
        Questao(
          descricao: perguntas[questSel]['questao'].toString(),
        ),
        //Converte a lista de resposta no Widget Resposta
        ...respList
            .map((resp) => RespostaButton(
                  descricao: resp['conteudo'].toString(),
                  funcao: () => responder(int.parse(resp['nota'].toString())),
                ))
            .toList(),
      ],
    );
  }
}
