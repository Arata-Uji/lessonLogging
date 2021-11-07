import 'package:flutter/material.dart';

import 'LessonLogging.dart';


class TopMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LessonLogging'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('授業を開始する'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LessonLogging(),
              ),
            );
          },
        ),
      ),
    );
  }
}