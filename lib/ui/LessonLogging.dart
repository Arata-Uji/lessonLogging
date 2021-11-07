import 'package:flutter/material.dart';

List<Widget> _items = <Widget>[];

class LessonLogging extends StatefulWidget {
  LessonLogging ({Key? key}) : super(key: key);

  @override
  _LessonLoggingState createState() => new _LessonLoggingState();
}

class _LessonLoggingState extends State<LessonLogging> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: Text('Lesson Logger'),
        ),
        backgroundColor: Colors.lightBlue[200],
        body: Center(
          child: Container(
            color: Colors.lightBlue[200],
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index){
                      return _items[index];
                    },
                    itemCount: _items.length,
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.red,
            child: Icon(Icons.add),
            onPressed: () {
              _buttonPressed();
            }
        ),
      ),
    );
  }

  List<Widget> list = <Widget>[];

  void _buttonPressed() {
    list.add(
      Container(
        margin: EdgeInsets.all(15),
        color: Colors.white,
        height: 250.0,
        width: 375.0,
      ),
    );
    setState((){
      _items = list;
    });
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

