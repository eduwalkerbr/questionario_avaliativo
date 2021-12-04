import 'package:flutter/material.dart';
import 'package:questionario_avaliativo/components/questao.dart';
import 'package:questionario_avaliativo/components/reiniciar.dart';
import 'package:questionario_avaliativo/components/resposta.dart';
import 'package:questionario_avaliativo/questions_list.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  final perguntas = Questions_list.getQuestionList();
  bool _hasQuestion = true;

  var _questSel = 0;
  void _responder() {
    setState(() {
      if (_questSel == (perguntas.length - 1)) {
        _hasQuestion = false;
      } else {
        _questSel++;
      }
    });
  }

  void _reiniciar() {
    setState(() {
      _questSel = 0;
      _hasQuestion = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> respList = perguntas[_questSel].cast()['respostas'];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Questionário"),
          centerTitle: true,
        ),
        body: _hasQuestion
            ? Column(
                children: [
                  Questao(
                    descricao: perguntas[_questSel]['questao'].toString(),
                  ),
                  ...respList
                      .map((resp) => Resposta(
                            descricao: resp,
                            funcao: _responder,
                          ))
                      .toList(),
                ],
              )
            : SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Sem mais perguntas a responder!",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Obrigado !!!",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.red,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Reiniciar(
                      descricao: "Reiniciar o Questionário",
                      funcao: _reiniciar,
                    ),
                  ],
                ),
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
