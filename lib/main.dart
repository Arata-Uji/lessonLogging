import 'package:flutter/material.dart';

import 'ui/BlackBoard.dart';
import 'ui/LessonLogging.dart';
import 'ui/SpeakLog.dart';
import 'ui/LogUnit.dart';
import 'ui/TopMenu.dart';

import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_recognition_error.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter入門アカデミー'),
          backgroundColor: Colors.orange,
        ),//////////////

        body: SpeakLog(context),
        // body: Center(
        //   child: Text(
        //     'Hello World',
        //     style: TextStyle(
        //       fontSize: 40,
        //     ),
        //   ),
        // ),

      ),
    );
  }
}




