class Question {
  String questionText;
  bool questionAnswer;

  Question(String q, bool a) {
    questionText = q;
    questionAnswer = a;
  }
}

//как вариант Question({String q, bool a}) - тогда в создаваемом объекте нужно писать Question(q:'rrr', a:'ttt')

