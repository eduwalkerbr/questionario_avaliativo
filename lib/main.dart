import 'package:flutter/material.dart';
import 'package:questionario_avaliativo/components/questionario.dart';
import 'package:questionario_avaliativo/components/resultado.dart';
import 'package:questionario_avaliativo/questions_list.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  bool _hasQuestion = true;

  var _questSel = 0;
  var pontTotal = 0;

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

  void _reiniciar() {
    setState(() {
      _questSel = 0;
      _hasQuestion = true;
      pontTotal = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Questionário"),
          centerTitle: true,
        ),
        body: _hasQuestion
            ? Questionario(
                questSel: _questSel,
                responder: _responder,
              )
            : Resultado(
                funcao: _reiniciar,
                pontuacao: pontTotal,
              ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  State<PerguntaApp> createState() {
    return _PerguntaAppState();
  }
}
