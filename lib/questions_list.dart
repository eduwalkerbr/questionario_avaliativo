// ignore: camel_case_types
class Questions_list {
  // ignore: non_constant_identifier_names
  static var question_list = [
    {
      'questao': "Qual sua cor favorita ?",
      'respostas': ['Vermelho', 'Verde', 'Azul', 'Roxo']
    },
    {
      'questao': "Qual seu animal favorito ?",
      'respostas': ['Cachorro', 'Gato', 'Cavalo', 'Peixe']
    },
    {
      'questao': "Qual sua local de Viagem favorito ?",
      'respostas': ['Praia', 'Sítio', 'Exterior', 'Estudos']
    },
    {
      'questao': "Qual seu filme favorito ?",
      'respostas': ['Titanic', 'Vingadores', 'Exorcista', 'Lagoa Azul']
    },
    {
      'questao': "Qual seu time favorito ?",
      'respostas': ['Internacional', 'Grêmio', 'Corinthians', 'Flamengo']
    }
  ];

  static List<Map<String, Object>> getQuestionList() {
    return question_list;
  }
}
