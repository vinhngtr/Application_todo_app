import 'package:todoapp/model/quiz_question.dart';

const quiz = [
  ListQuestion('What are the main building blocks of Flutter UIs?',
      ['Widget', 'Component', 'Blocks', 'Container']),
  ListQuestion('How are Flutter UIs built?', [
    'By combining widget in code',
    'By combining widget in a visual editor',
    'By defining widgets in a config files',
    'By using XCode for IOS and Android Studio for Android'
  ]),
  ListQuestion('What the purpose of a StatefullWidget?', [
    'Update UI as data changes',
    'Update data as UI changes',
    'Ignore data changes',
    'Render UI that does not depend on data'
  ]),
  ListQuestion(
    'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  ListQuestion(
    'What happens if you change data in a StatelessWidget?',
    [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ],
  ),
  ListQuestion(
    'How should you update data inside of StatefulWidgets?',
    [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
  ),
];
