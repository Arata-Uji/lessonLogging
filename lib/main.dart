import 'package:flutter/material.dart';

import 'ui/BlackBoard.dart';
import 'ui/LessonLogging.dart';
import 'ui/SpeakLog.dart';
import 'ui/LogUnit.dart';
import 'ui/TopMenu.dart';

void main() {
  runApp(
      MyApp()
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LessonLogging()
    );
  }
}
