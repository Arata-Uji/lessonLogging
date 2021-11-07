import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'BlackBoard.dart';

Container getLogUnit(BuildContext context){
  return Container(
    margin: EdgeInsets.all(4),
    width:  MediaQuery.of(context).size.width-8,
    height: 180,
    decoration: BoxDecoration(
      color: Colors.greenAccent,
      border: Border.all(),
      borderRadius: BorderRadius.circular(4)
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        getBlackBoard(context),
        getSpeakLog(context),
      ],
    )
    );
}

Column getSpeakLog(BuildContext context) {
  String sampleText = "直接の会話以外の親子のコミュニケーション方法について聞いたところ、「スマートフォン・携帯電話での通話」18.0％が最多で、「家の固定電話」17.7％、「LINEなどのチャット機能」17.2％などが続いた。小中学生別でみると、小学生は「家の固定電話」18.3％、中学生は「LINEなどのチャット機能」34.7％がそれぞれ最多。";

  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width / 2 - 8 ,
          height: 120,
          child: Text(sampleText, style: TextStyle(
            fontSize: 9,
          ))
        ),

    ],
  );
}