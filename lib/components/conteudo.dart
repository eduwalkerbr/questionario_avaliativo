import 'package:flutter/material.dart';
import 'package:questionario_avaliativo/components/questionario/questionario.dart';
import 'package:questionario_avaliativo/components/resultado/resultado.dart';
import 'package:questionario_avaliativo/model/questions_list.dart';

class Conteudo extends StatefulWidget {
  const Conteudo();

  @override
  _ConteudoState createState() => _ConteudoState();
}

class _ConteudoState extends State<Conteudo> {
  bool _hasQuestion = true;

  var _questSel = 0;
  var pontTotal = 0;

  /**
   * Função que computa a resposta e pontuação
  */
  void _responder(int pontuacao) {
    setState(() {
      if (_questSel == Questions_list.getLengthList() - 1) {
        _hasQuestion = false;
      } else {
        _questSel++;
        pontTotal += pontuacao;
      }
    });
  }

  /**
   * Função para reiniciar o questionário
   */
  void _reiniciar() {
    //Altera os estados das variáveis para os iniciais
    setState(() {
      _questSel = 0;
      _hasQuestion = true;
      pontTotal = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    //Caso ainda tenha questão a exibir
    return _hasQuestion
        //Monta o questionário
        ? Questionario(
            questSel: _questSel,
            responder: _responder,
          )
        //Exibe o resultado ao fim das questões
        : Resultado(
            funcao: _reiniciar,
            pontuacao: pontTotal,
          );
  }
}
