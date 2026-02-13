import 'package:flutter_app/models/quiz_questions.dart';

final questions = [
  QuisQuestion("What are the main build blocks of Flutter Uis?", const [
    "Widgets",
    "Components",
    "Blocks",
    "Functions",
  ]),
  QuisQuestion("How are Flutter Uis built?", const [
    "By combining widgets in code",
    "By combining widgets in a visual editor",
    "By defining widgets in a config files",
    "By using Xcode for iOS and Android Studio for Android",
  ]),
  QuisQuestion("What's the purpose of a StateFullWidget?", const [
    "Update UI as data changes",
    "To build a widget that never changes",
    "Update data as UI changes",
    "Render UI that does not depend on data",
  ]),
  QuisQuestion(
    "Which widget should you try use more often: StateFullWidget or StateLessWidget?",
    const [
      "StateLessWidget",
      "StateFullWidget",
      "Both are used equally",
      "None of the above",
    ],
  ),
  QuisQuestion("What happens if you change data in a StateLessWidget?", const [
    "The UI is not updated",
    "The UI is updated",
    "The closest StateFullWidget is updated",
    "The widget disappears",
  ]),
];
