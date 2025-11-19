/// A data model for a quiz question.
class QuizQuestion {
  /// Creates a new instance of the [QuizQuestion] class.
  ///
  /// The [question] parameter is the text of the question, and the [answers]
  /// parameter is a list of possible answers. The first answer in the list
  /// is always the correct one.
  const QuizQuestion(this.question, this.answers);

  /// The text of the question.
  final String question;

  /// A list of possible answers.
  final List<String> answers;

  /// Returns a shuffled list of answers.
  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
