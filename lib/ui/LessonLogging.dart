import 'package:flutter/material.dart';
import "LogUnit.dart";

List<Widget> _items = <Widget>[];

class LessonLogging extends StatefulWidget {
  LessonLogging ({Key? key}) : super(key: key);

  @override
  _LessonLoggingState createState() => new _LessonLoggingState();
}

class _LessonLoggingState extends State<LessonLogging> {
  int isRecord = 1;
  Icon icon = Icon(Icons.stop);

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
            child: icon,
            onPressed: () {
              isRecord = _changeIsRecord(isRecord);
              icon = _changeIcon(isRecord,icon);
              _buttonPressed(context);
            }
        ),
      ),
    );
  }

  int _changeIsRecord(int _isRecord){
    return (_isRecord+1)%2;
  }
  Icon _changeIcon(int _isRecord, Icon _icon) {
    if(_isRecord == 0){
      return Icon(Icons.add);
    }
    else{
      return Icon(Icons.stop);
    }
  }

  void _buttonPressed(BuildContext context) {
    list.add(
        getLogUnit(context)
    );
    setState((){
      _items = list;
    });
  }

List<Widget> list = <Widget>[];
  // @override
  // State<StatefulWidget> createState() {
  // TODO: implement createState
  //   throw UnimplementedError();
  // }


}



