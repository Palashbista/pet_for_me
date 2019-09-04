import 'question.dart';


class QuizBrain {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question('Normal adult dogs have 42 teeth.', true),
    Question('A dog sweats from its mouth.', true),
    Question('Dogs can only see in black and white.', false),
    Question('Dalmatian puppies are born with their spots.', false),
    Question('\"Stay\" is the most common training command taught to dogs.', false),
    Question('Golden retriever is the most popular breed of dog, according to the   American Kennel Club\'s registrations.', false),
    Question('There are a total of 400 dog breeds worldwide.', true),
    Question('German Shepherd is the fastest breed of dog.', false),
    Question('Pomeranian is the smallest dog breed.', false),
    Question('Dogs can hear roughly 4 times as far as a human.', true),
    Question('A dog\'s sense of smell is roughly 10,000 times keener than a human\'s.', true),
    Question('Four dogs (all from First Class cabins) survived the sinking of the Titanic -- Three Pomeranians and one Pekingese. ', false),
    Question('Blue Lacy is the official State Dog Breed of Texas.', true),
    Question('Theodore Roosevelt\'s Boston Bull Terrier, Pete, had a taste of at least five White House visitors, including a French ambassador whose pants he reportedly ripped off!', true),
    Question('Humans have kept dogs as pets for the past 6000 years', false),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),

    //Question('',true),
  ];


  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
    print(_questionNumber);
    print(_questionBank.length);
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  int getQuestionNumberLength() {
    return _questionBank.length;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('last question reached');
      return true;
    } else {
      print('More questions left');
//      print(_questionNumber);
//      print(_questionBank.length);
      return false;
    }
  }

  void resetQuestionNumber() {
    _questionNumber = 0;
  }
}

