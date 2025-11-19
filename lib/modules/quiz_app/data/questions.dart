import 'package:s2_rolldice/modules/quiz_app/models/quiz_question.dart';

const questions = [
  QuizQuestion(
    'What are the main building blocks of Flutter UIs?',
    [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),
  QuizQuestion('How are Flutter UIs built?', [
    'By combining widgets in code',
    'By combining widgets in a visual editor',
    'By defining widgets in config files',
    'By using XCode for iOS and Android Studio for Android',
  ]),
  QuizQuestion(
    'What\'s the purpose of a StatefulWidget?',
    [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depend on data',
    ],
  ),
  QuizQuestion(
    'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  QuizQuestion(
    'What happens if you change data in a StatelessWidget?',
    [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ],
  ),
  QuizQuestion(
    'How should you update data inside of StatefulWidgets?',
    [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
  ),
  QuizQuestion(
    'What is the purpose of the `pubspec.yaml` file?',
    [
      'To manage project dependencies and assets',
      'To define the UI layout',
      'To store user data',
      'To configure the build process',
    ],
  ),
  QuizQuestion(
    'What is the main programming language used for Flutter development?',
    [
      'Dart',
      'Java',
      'Swift',
      'Kotlin',
    ],
  ),
  QuizQuestion(
    'What is a "hot reload" in Flutter?',
    [
      'A feature that allows you to quickly see the results of your code changes without restarting the app',
      'A feature that reloads the app when it gets too hot',
      'A feature that reloads the app when you shake the device',
      'A feature that reloads the app when you press a button',
    ],
  ),
  QuizQuestion(
    'Which of the following is a valid way to create a `Text` widget in Flutter?',
    [
      'Text("Hello, World!")',
      'Text.create("Hello, World!")',
      'new Text("Hello, World!")',
      'Text.fromString("Hello, World!")',
    ],
  ),
];