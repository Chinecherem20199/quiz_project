import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Question> _questionsBank = [
    Question(quesText: 'Some cats are actually allergic to humans', quesAnswer: true),
    Question(quesText: 'You can lead a cow down stairs but not up stairs.', quesAnswer: false),
    Question(quesText: 'Approximately one quarter of human bones are in the feet.', quesAnswer: true),
    Question(quesText: 'A slug\'s blood is green.', quesAnswer: true),
    Question(quesText: 'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', quesAnswer: true),
    Question(quesText: 'It is illegal to pee in the Ocean in Portugal.', quesAnswer: true),
    Question(quesText: 'No piece of square dry paper can be folded in half more than 7 times.', quesAnswer: false),
    Question(quesText: 'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.', quesAnswer: true),
    Question(quesText: 'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.', quesAnswer: false),
    Question(quesText: 'The total surface area of two human lungs is approximately 70 square metres.', quesAnswer: true),
    Question(quesText: 'Google was originally called \"Backrub\".', quesAnswer: true),
    Question(quesText: 'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.', quesAnswer: true),
    Question(quesText: 'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.', quesAnswer: true),
  ];
  void nextQuestion() {
    if (_questionNumber < _questionsBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionsBank[_questionNumber].quesText;
  }

  bool getCorrectAnswer() {
    return _questionsBank[_questionNumber].quesAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionsBank.length - 1) {
      //TODO: Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.

      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  //TODO: Step 4 part B - Create a reset() method here that sets the questionNumber back to 0.
  void reset() {
    _questionNumber = 0;
  }
}
