class QuestionBrain {
  int questionNumber = 0;

  List<String> questionBank = [
    'Вопрос1',
    'Вопрос2',
    'Вопрос3',
    'Вопрос4',
    'Вопрос5',
    'Вопрос6',
    'Вопрос7',
    'Вопрос8',
  ];

  void nextQuestion() {
    if (questionNumber < questionBank.length - 1) {
      questionNumber++;
    }
  }

  String getNextQuestion() {
    return questionBank[questionNumber];
  }
}
