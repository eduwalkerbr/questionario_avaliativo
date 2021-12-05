// ignore: camel_case_types
class Questions_list {
  // ignore: non_constant_identifier_names
  static var question_list = [
    {
      'questao': "Qual sua cor favorita ?",
      'respostas': [
        {'conteudo': 'Vermelho', 'nota': 8},
        {'conteudo': 'Verde', 'nota': 5},
        {'conteudo': 'Azul', 'nota': 10},
        {'conteudo': 'Roxo', 'nota': 3},
      ],
    },
    {
      'questao': "Qual seu animal favorito ?",
      'respostas': [
        {'conteudo': 'Cachorro', 'nota': 7},
        {'conteudo': 'Gato', 'nota': 5},
        {'conteudo': 'Cavalo', 'nota': 3},
        {'conteudo': 'Peixe', 'nota': 9},
      ],
    },
    {
      'questao': "Qual sua local de Viagem favorito ?",
      'respostas': [
        {'conteudo': 'Praia', 'nota': 10},
        {'conteudo': 'Sítio', 'nota': 8},
        {'conteudo': 'Exterior', 'nota': 9},
        {'conteudo': 'Estudos', 'nota': 2},
      ],
    },
    {
      'questao': "Qual seu filme favorito ?",
      'respostas': [
        {'conteudo': 'Titanic', 'nota': 9},
        {'conteudo': 'Vingadores', 'nota': 1},
        {'conteudo': 'Exorcista', 'nota': 6},
        {'conteudo': 'Lagoa Azul', 'nota': 10},
      ],
    },
    {
      'questao': "Qual seu time favorito ?",
      'respostas': [
        {'conteudo': 'Internacional', 'nota': 10},
        {'conteudo': 'Grêmio', 'nota': 0},
        {'conteudo': 'Corinthians', 'nota': 5},
        {'conteudo': 'Flamengo', 'nota': 8},
      ],
    }
  ];

  static List<Map<String, Object>> getQuestionList() {
    return question_list;
  }

  static int getLengthList() {
    return question_list.length;
  }
}
