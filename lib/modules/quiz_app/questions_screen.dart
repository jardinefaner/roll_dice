import 'package:flutter/material.dart';
import 'package:s2_rolldice/modules/quiz_app/answer_button.dart';
import 'package:s2_rolldice/modules/quiz_app/data/questions.dart';

/// The screen that displays the quiz questions.
///
/// This widget is responsible for displaying the current question and a list of
/// answers. When an answer is selected, the [onSelectAnswer] callback is
/// called.
class QuestionsScreen extends StatefulWidget {
  /// Creates a new instance of the [QuestionsScreen] widget.
  const QuestionsScreen(this.onSelectAnswer, {super.key});

  /// The callback that is called when an answer is selected.
  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  /// The index of the current question being displayed.
  var currentQuestionIndex = 0;

  /// Called when an answer is selected.
  ///
  /// This method calls the [onSelectAnswer] callback and increments the
  /// [currentQuestionIndex].
  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.question,
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            Column(
              spacing: 4,
              children: [
                ...currentQuestion.getShuffledAnswers().map((answer) {
                  return AnswerButton(
                    answer: answer,
                    onTap: () {
                      answerQuestion(answer);
                    },
                  );
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
