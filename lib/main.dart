import 'package:flutter/material.dart';
import 'package:questionario_avaliativo/components/conteudo.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Questionário"),
          centerTitle: true,
        ),
        body: const Conteudo(),
      ),
    );
  }
}
