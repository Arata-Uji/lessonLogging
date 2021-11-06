import 'package:flutter/material.dart';

class DemoPage extends StatelessWidget {
  const DemoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
        _getBlackBoard(context)
    );
  }
  
  Column _getBlackBoard(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: _getBlackBoardImage(context),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: _getHowMuchPassed(),
        )
      ],
    );
  }
  Container _getBlackBoardImage(BuildContext context){
    return Container(
        width: MediaQuery.of(context).size.width / 2,
        height: 150,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(4.0),
            border: Border.all(color: Colors.black, width: 1.2),
            image: DecorationImage(image: NetworkImage("https://picsum.photos/200/100"),
                fit: BoxFit.cover)
        )
    );
  }

  Container _getHowMuchPassed(){
    return Container(
        width: 150,
        child: Column(
          children: <Widget>[
            Text("5 minies before")
          ],
        )
    );
  }

}



// class BlackBoard extends StatelessWidget {
//   const BlackBoard({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           _getBlackBoardImage(),
//           _getHowMuchPassed()
//         ],
//       )
//     );
//   }







// class ScaffoldExample extends StatelessWidget {
//   const ScaffoldExample({Key? key}) : super(key: key);
//
//   _tapButton(){
//     debugPrint("Tapped Button");
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Scaffold"),
//         centerTitle: true,
//         backgroundColor: Colors.lightBlue.shade500,
//         actions: <Widget>[
//           IconButton(onPressed: ()=> debugPrint("Email Tapped"), icon: Icon(Icons.email)),
//           IconButton(icon: Icon(Icons.access_alarms), onPressed: _tapButton)
//         ],
//       ),
//
//       floatingActionButton: FloatingActionButton(
//           backgroundColor: Colors.lightGreen,
//           child: Icon(Icons.call_missed),
//           onPressed: () => debugPrint("Hello")
//       ),
//
//       bottomNavigationBar: BottomNavigationBar(items: [
//         BottomNavigationBarItem(icon: Icon(Icons.accessibility), title: Text("First")),
//         BottomNavigationBarItem(icon: Icon(Icons.ac_unit), title: Text("Second"))
//       ], onTap: (int index) => debugPrint("Tapped item : $index"),),
//       backgroundColor: Colors.purpleAccent.shade700,
//       body: Container(
//         alignment: Alignment.center,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             CustomButton()
//             //     InkWell(
//             //       child: Text("Tap Me",
//             //       style: TextStyle(fontSize: 23.4),
//             //     ),
//             // onTap: ()=> debugPrint("Tapped..."))
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class Home extends StatelessWidget {
//   const Home({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       color: Colors.yellow,
//       child: Center(
//           child: Text(
//               "Hello Flutter",
//               textDirection: TextDirection.ltr,
//               style: TextStyle(
//                   fontWeight: FontWeight.w500,
//                   fontSize: 23.4,
//                   fontStyle: FontStyle.italic
//               )
//           )),
//     );
//     // return Center(
//     //   child: Text("Hello Flutter",
//     //     textDirection: TextDirection.ltr,),
//     // );
//   }
// }
//
// class CustomButton extends StatelessWidget {
//   const CustomButton({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         final snackBar = SnackBar(content: Text("Hello World"),);
//         Scaffold.of(context).showSnackBar(snackBar);
//       },
//
//       child: Container(
//         padding: EdgeInsets.all(10.0),
//         decoration: BoxDecoration(
//             color: Colors.deepOrange,
//             borderRadius: BorderRadius.circular(8.0)
//         ),
//         child: Text("Button"),
//       ),
//     );
//   }
// }
//
// class BizCard extends StatelessWidget {
//   const BizCard({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("BizCard"),
//           centerTitle: true,
//         ),
//         body: Container(
//             alignment: Alignment.center,
//             child: Stack(
//                 alignment: Alignment.topCenter,
//                 children: <Widget>[
//                   _getCard(),
//                   _getAvatar()
//                 ]
//             )
//         )
//     );
//   }
//
//   Container _getCard(){
//     return Container(
//       width: 350,
//       height: 200,
//       margin: EdgeInsets.all(20.0),
//       decoration: BoxDecoration(
//         color: Colors.cyan,
//         borderRadius: BorderRadius.circular((4.5)
//         ),
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Text("Yeongse Kim",
//               style: TextStyle( fontSize: 20.9,
//                   color: Colors.lightGreen,
//                   fontWeight: FontWeight.bold
//               )),
//
//           Text("Kyoto University"),
//           Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Icon(Icons.person_outline),
//                 Text("Let's build a App!")
//               ]
//           )
//         ],
//       ),
//     );
//   }
//
//   Container _getAvatar(){
//     return Container(
//         width: 100,
//         height: 100,
//         decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.all(Radius.circular(50.0)),
//             border: Border.all(color: Colors.redAccent, width: 1.2),
//             image: DecorationImage(image: NetworkImage("https://picsum.photos/300/300"),
//                 fit: BoxFit.cover)
//         )
//     );
//   }
// }
//
// class Wisdom extends StatefulWidget {
//   const Wisdom({Key? key}) : super(key: key);
//
//   @override
//   _WisdomState createState() => _WisdomState();
// }
//
// class _WisdomState extends State<Wisdom> {
//
//   int _index = 0;
//
//   List quotes = [
//     "a",
//     "b",
//     "c",
//     "d"
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Container(
//             child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Expanded(
//                     child: Center(
//                       child: Container(
//                           width: 200,
//                           height: 140,
//                           margin: EdgeInsets.all(10.0),
//                           decoration: BoxDecoration(
//                               color: Colors.transparent,
//                               borderRadius: BorderRadius.circular(14.5)
//                           ),
//                           child: Center(child: Text(quotes[_index % quotes.length],
//                               style: TextStyle(
//                                   color: Colors.grey.shade600,
//                                   fontStyle: FontStyle.italic
//                               )))),
//                     ),
//                   ),
//                   Divider(thickness: 5.3, ),
//                   Padding(
//                       padding: const EdgeInsets.only(top: 8.0),
//                       child: FlatButton.icon(
//                           onPressed: _showQuote,
//                           color: Colors.green,
//                           icon: Icon(Icons.wb_sunny),
//                           label: Text(quotes[0],
//                               style: TextStyle(fontSize: 18.8, color: Colors.white)))),
//                   Spacer()
//                 ])));
//   }
//
//   void _showQuote(){
//     //increment our counter by
//     setState((){
//       _index += 1;
//     });
//   }
//
//
// }
//
// class BillSplitter extends StatefulWidget {
//   const BillSplitter({Key? key}) : super(key: key);
//
//   @override
//   _BillSplitterState createState() => _BillSplitterState();
// }
//
// class _BillSplitterState extends State<BillSplitter> {
//
//   int _tipPercentage = 0;
//   int _personCounter = 1;
//   double _billAmount = 0.0;
//
//   Color _purple = HexColor("#6908D6");
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Container(
//             margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.1),
//             alignment: Alignment.center,
//             color: Colors.white,
//             child: ListView(
//               scrollDirection: Axis.vertical,
//               padding: EdgeInsets.all(20.5),
//               children: <Widget>[
//                 Container(
//                     width: 150,
//                     height: 150,
//                     decoration: BoxDecoration(
//                         color: _purple.withOpacity(0.1),
//                         borderRadius: BorderRadius.circular(12.0)
//                     ),
//                     child: Center(
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: <Widget>[
//                           Text("Total Per Person", style: TextStyle(
//                               fontWeight: FontWeight.normal,
//                               fontSize: 15.0,
//                               color: _purple
//                           )),
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Text("\$ ${calculateTotalPerPerson(_billAmount, _personCounter, _tipPercentage)}", style: TextStyle(
//                                 fontSize: 34.9,
//                                 fontWeight: FontWeight.bold,
//                                 color: _purple
//                             )),
//                           )
//                         ],
//                       ),
//                     )
//                 ),
//                 Container(
//                     margin: EdgeInsets.only(top: 20.0),
//                     padding: EdgeInsets.all(12.0),
//                     decoration: BoxDecoration(
//                         color: Colors.transparent,
//                         border: Border.all(
//                             color: Colors.blueGrey.shade100,
//                             style: BorderStyle.solid
//                         ),
//                         borderRadius: BorderRadius.circular(12.0)
//                     ),
//                     child: Column(
//                         children: <Widget>[
//                           TextField(
//                             keyboardType: TextInputType.numberWithOptions(decimal: true),
//                             style: TextStyle(color: _purple),
//                             decoration: InputDecoration(
//                                 prefixText: "Bill Amount : ",
//                                 prefixIcon: Icon(Icons.attach_money)
//                             ),
//                             onChanged: (String value){
//                               try{
//                                 _billAmount = double.parse(value);
//
//                               }catch(exeption){
//                                 _billAmount = 0.0;
//
//
//                               }
//                             },
//                           ),
//                           Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: <Widget>[
//                               Text("Split", style: TextStyle(
//                                   color: Colors.grey.shade700
//                               ),),
//                               Row(
//                                   children: <Widget>[
//                                     InkWell(
//                                         onTap: (){
//                                           setState((){
//                                             if (_personCounter > 1){
//                                               _personCounter--;
//                                             }else{
//                                               //do nothing
//                                             }
//                                           });
//                                         } ,//onTap
//                                         child: Container(
//                                             width: 40.0,
//                                             height: 40.0,
//                                             margin: EdgeInsets.all(10.0),
//                                             decoration: BoxDecoration(
//                                                 borderRadius: BorderRadius.circular(7.0),
//                                                 color: _purple.withOpacity(0.1)
//                                             ),
//                                             child: Center(
//                                               child: Text(
//                                                   "-", style: TextStyle(
//                                                 color: _purple,
//                                                 fontWeight: FontWeight.bold,
//                                                 fontSize: 17.0,
//                                               )
//                                               ),
//                                             )
//                                         )
//                                     ),
//                                     Text("$_personCounter", style: TextStyle(
//                                         color: _purple,
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 17.0
//                                     )),
//                                     InkWell(
//                                         onTap: (){
//                                           setState((){
//                                             _personCounter ++;
//                                           });
//                                         },
//                                         child: Container(
//                                             width: 40.0,
//                                             height: 40.0,
//                                             margin: EdgeInsets.all(10.0),
//                                             decoration: BoxDecoration(
//                                                 color: _purple.withOpacity(0.1),
//                                                 borderRadius: BorderRadius.circular(7.0)
//                                             ),
//                                             child: Center(
//                                               child: Text("+", style: TextStyle(
//                                                   color: _purple,
//                                                   fontSize: 17.0,
//                                                   fontWeight: FontWeight.bold
//                                               )),
//                                             )
//                                         )
//                                     ),
//                                   ]
//                               )
//
//                             ],
//
//                           ),
//                           //tip
//                           Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: <Widget>[
//                                 Text("Tip", style: TextStyle(
//                                     color: Colors.grey.shade700
//                                 )),
//                                 Padding(
//                                   padding: const EdgeInsets.all(8.0),
//                                   child: Text(" \$ ${(calculateTotalTip(_billAmount, _personCounter, _tipPercentage)).toStringAsFixed(2)}", style: TextStyle(
//                                       color: _purple,
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 17.0
//                                   )),
//                                 )
//                               ]
//                           ),
//
//                           //slider
//                           Column(
//                             children: <Widget>[
//                               Text("$_tipPercentage %", style: TextStyle(
//                                   color: _purple,
//                                   fontSize: 17.0,
//                                   fontWeight: FontWeight.bold
//                               )),
//                               Slider(
//                                   min: 0,
//                                   max: 100,
//                                   activeColor: _purple,
//                                   inactiveColor: Colors.grey,
//                                   divisions: 10,
//                                   value: _tipPercentage.toDouble(),
//                                   onChanged: (double newValue){
//                                     setState((){
//                                       _tipPercentage = newValue.round();
//                                     });
//                                   })
//                             ],
//
//
//                           )
//                         ]
//                     )
//                 ),
//               ],
//             )
//         )
//     );
//   }
//   calculateTotalPerPerson(double billAmount, int splitBy, int tipPercentage){
//     var totalPerPerson = (calculateTotalTip(billAmount, splitBy, tipPercentage) + billAmount) / splitBy;
//
//     return totalPerPerson.toStringAsFixed(2);
//
//   }
//
//   calculateTotalTip(double billAmount, int splitBy, int tipPercentage){
//     double totalTip = 0;
//
//     if(billAmount < 0 || billAmount.toString().isEmpty || billAmount == null){
//       //no go!
//     }else{
//       totalTip = (billAmount * tipPercentage) / 100;
//     }
//
//     return totalTip;
//   }
// }
//
// class QuizApp extends StatefulWidget {
//   const QuizApp({Key? key}) : super(key: key);
//
//   @override
//   _QuizAppState createState() => _QuizAppState();
// }
//
// class _QuizAppState extends State<QuizApp> {
//
//   int _currentQuestionIndex = 0;
//
//   List questionBank = [
//     Question.name("Am I a Cat???", true),
//     Question.name("Are you from Japan?", true),
//     Question.name("Have you ever been to Kyoto?", false)
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("True Citizen"),
//         centerTitle: true,
//         backgroundColor: Colors.blueGrey,
//       ),
//       backgroundColor: Colors.blueGrey,
//
//       //We use Builder here to use a context that is a descendent of scaffold
//       body: Builder(
//         builder: (BuildContext context) => Container(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Center(
//                   child: Image.asset("images/flag.png",
//                     width: 250,
//                     height: 180,),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(12.0),
//                   child: Container(
//                     decoration: BoxDecoration(
//                         color: Colors.transparent,
//                         borderRadius: BorderRadius.circular(14.4),
//                         border: Border.all(
//                             color: Colors.blueGrey.shade400, style: BorderStyle.solid
//                         )
//                     ),
//                     height: 120.0,
//                     child: Center(child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text(questionBank[_currentQuestionIndex].questionText, style: TextStyle(
//                           fontSize: 16.9,
//                           color: Colors.white
//                       )),
//                     )),
//                   ),
//                 ),
//                 Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: <Widget>[
//
//                       RaisedButton(onPressed: () => _prevQuestion(),
//                           color: Colors.blueGrey.shade900,
//                           child: Icon(Icons.arrow_back, color: Colors.white,)
//                       ),
//
//                       RaisedButton(onPressed: () => _checkAnswer(true, context),
//                           color: Colors.blueGrey.shade900,
//                           child: Text("True", style: TextStyle(color: Colors.white))
//                       ),
//
//                       RaisedButton(onPressed: () => _checkAnswer(false, context),
//                           color: Colors.blueGrey.shade900,
//                           child: Text("False", style: TextStyle(color: Colors.white))
//                       ),
//
//                       RaisedButton(onPressed: () => _nextQuestion(),
//                           color: Colors.blueGrey.shade900,
//                           child: Icon(Icons.arrow_forward, color: Colors.white)
//                       )
//                     ]
//                 ),
//                 Spacer()
//               ],
//             )
//
//         ),
//       ),
//     );
//   }
//   _checkAnswer(bool userChoice, BuildContext context){
//     if(userChoice == questionBank[_currentQuestionIndex].isCorrect){
//       //correct answer
//       final snackbar = SnackBar(
//           backgroundColor: Colors.green,
//           duration: Duration(milliseconds: 500),
//           content: Text("Correct!"));
//       Scaffold.of(context).showSnackBar(snackbar);
//
//       _updateQuestion();
//     }else{
//       final snackbar = SnackBar(
//           backgroundColor: Colors.redAccent,
//           duration: Duration(milliseconds: 500),
//           content: Text("Incorrect!"));
//       Scaffold.of(context).showSnackBar(snackbar);
//
//       _updateQuestion();
//     }
//   }
//
//   _nextQuestion(){
//     setState((){
//       _currentQuestionIndex = (_currentQuestionIndex+1) % questionBank.length;
//     });
//   }
//
//   _prevQuestion(){
//     setState((){
//       _currentQuestionIndex = (_currentQuestionIndex-1) % questionBank.length;
//     });
//   }
//
//   _updateQuestion(){
//     _nextQuestion();
//   }
//
//
// }
//
// class  MovieListView extends StatelessWidget {
//   //const MovieListView({Key? key}) : super(key: key);
//
//   final List movies = [
//     "タイタニック",
//     "ブレードランナー",
//     "ランド",
//     "アベンジャーズ",
//     "アバター",
//     "アイアムアレジェンド",
//     "バイキング"
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Movies"),
//         backgroundColor: Colors.blueGrey.shade900,
//       ),
//       backgroundColor: Colors.blueGrey.shade400,
//       body: ListView.builder(
//           itemCount: movies.length,
//           itemBuilder: (BuildContext context, int index) {
//             return Card(
//                 elevation: 4.5,
//                 color: Colors.white,
//                 child: ListTile(
//                   leading: CircleAvatar(
//                       child: Container(
//                           decoration: BoxDecoration(
//                             //color: Colors.blue,
//                               borderRadius: BorderRadius.circular(13.9)
//                           ),
//                           child: Text("H")
//                       )
//                   ),
//                   trailing: Text("..."),
//                   title: Text(movies[index]),
//                   subtitle: Text("sub"),
//                   //onTap: () => debugPrint("Movie name: ${movies.elementAt(index)}")
//                   onTap: (){
//                     Navigator.push(context, MaterialPageRoute(
//                         builder: (context) => MovieListViewDetails(movieName: movies.elementAt(index),)
//                     ));
//                   },
//                 ));
//           } //itemBuilder
//       ),
//     );
//   }
// }
// //new route(screen or page)
// class MovieListViewDetails extends StatelessWidget {
//
//   const MovieListViewDetails({Key? key, required this.movieName}) : super(key: key);
//   final String movieName;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Movies ${this.movieName}"),
//         backgroundColor: Colors.blueGrey.shade900,
//       ),
//       body: Center(
//         child: Container(
//             child: RaisedButton(
//                 child: Text("Go back"),
//                 onPressed: (){
//                   Navigator.pop(context);
//                 }
//             )
//         ),
//       ),
//     );
//   }
// }
//
//

//
//       floatingActionButton: FloatingActionButton(
//           backgroundColor: Colors.lightGreen,
//           child: Icon(Icons.call_missed),
//           onPressed: () => debugPrint("Hello")
//       ),
//
//       bottomNavigationBar: BottomNavigationBar(items: [
//         BottomNavigationBarItem(icon: Icon(Icons.accessibility), title: Text("First")),
//         BottomNavigationBarItem(icon: Icon(Icons.ac_unit), title: Text("Second"))
//       ], onTap: (int index) => debugPrint("Tapped item : $index"),),
//       backgroundColor: Colors.purpleAccent.shade700,
//       body: Container(
//         alignment: Alignment.center,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             CustomButton()
//             //     InkWell(
//             //       child: Text("Tap Me",
//             //       style: TextStyle(fontSize: 23.4),
//             //     ),
//             // onTap: ()=> debugPrint("Tapped..."))
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class Home extends StatelessWidget {
//   const Home({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       color: Colors.yellow,
//       child: Center(
//           child: Text(
//               "Hello Flutter",
//               textDirection: TextDirection.ltr,
//               style: TextStyle(
//                   fontWeight: FontWeight.w500,
//                   fontSize: 23.4,
//                   fontStyle: FontStyle.italic
//               )
//           )),
//     );
//     // return Center(
//     //   child: Text("Hello Flutter",
//     //     textDirection: TextDirection.ltr,),
//     // );
//   }
// }
//
// class CustomButton extends StatelessWidget {
//   const CustomButton({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         final snackBar = SnackBar(content: Text("Hello World"),);
//         Scaffold.of(context).showSnackBar(snackBar);
//       },
//
//       child: Container(
//         padding: EdgeInsets.all(10.0),
//         decoration: BoxDecoration(
//             color: Colors.deepOrange,
//             borderRadius: BorderRadius.circular(8.0)
//         ),
//         child: Text("Button"),
//       ),
//     );
//   }
// }
//
// class BizCard extends StatelessWidget {
//   const BizCard({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("BizCard"),
//           centerTitle: true,
//         ),
//         body: Container(
//             alignment: Alignment.center,
//             child: Stack(
//                 alignment: Alignment.topCenter,
//                 children: <Widget>[
//                   _getCard(),
//                   _getAvatar()
//                 ]
//             )
//         )
//     );
//   }
//
//   Container _getCard(){
//     return Container(
//       width: 350,
//       height: 200,
//       margin: EdgeInsets.all(20.0),
//       decoration: BoxDecoration(
//         color: Colors.cyan,
//         borderRadius: BorderRadius.circular((4.5)
//         ),
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Text("Yeongse Kim",
//               style: TextStyle( fontSize: 20.9,
//                   color: Colors.lightGreen,
//                   fontWeight: FontWeight.bold
//               )),
//
//           Text("Kyoto University"),
//           Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Icon(Icons.person_outline),
//                 Text("Let's build a App!")
//               ]
//           )
//         ],
//       ),
//     );
//   }
//
//   Container _getAvatar(){
//     return Container(
//         width: 100,
//         height: 100,
//         decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.all(Radius.circular(50.0)),
//             border: Border.all(color: Colors.redAccent, width: 1.2),
//             image: DecorationImage(image: NetworkImage("https://picsum.photos/300/300"),
//                 fit: BoxFit.cover)
//         )
//     );
//   }
// }
//
// class Wisdom extends StatefulWidget {
//   const Wisdom({Key? key}) : super(key: key);
//
//   @override
//   _WisdomState createState() => _WisdomState();
// }
//
// class _WisdomState extends State<Wisdom> {
//
//   int _index = 0;
//
//   List quotes = [
//     "a",
//     "b",
//     "c",
//     "d"
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Container(
//             child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Expanded(
//                     child: Center(
//                       child: Container(
//                           width: 200,
//                           height: 140,
//                           margin: EdgeInsets.all(10.0),
//                           decoration: BoxDecoration(
//                               color: Colors.transparent,
//                               borderRadius: BorderRadius.circular(14.5)
//                           ),
//                           child: Center(child: Text(quotes[_index % quotes.length],
//                               style: TextStyle(
//                                   color: Colors.grey.shade600,
//                                   fontStyle: FontStyle.italic
//                               )))),
//                     ),
//                   ),
//                   Divider(thickness: 5.3, ),
//                   Padding(
//                       padding: const EdgeInsets.only(top: 8.0),
//                       child: FlatButton.icon(
//                           onPressed: _showQuote,
//                           color: Colors.green,
//                           icon: Icon(Icons.wb_sunny),
//                           label: Text(quotes[0],
//                               style: TextStyle(fontSize: 18.8, color: Colors.white)))),
//                   Spacer()
//                 ])));
//   }
//
//   void _showQuote(){
//     //increment our counter by
//     setState((){
//       _index += 1;
//     });
//   }
//
//
// }
//
// class BillSplitter extends StatefulWidget {
//   const BillSplitter({Key? key}) : super(key: key);
//
//   @override
//   _BillSplitterState createState() => _BillSplitterState();
// }
//
// class _BillSplitterState extends State<BillSplitter> {
//
//   int _tipPercentage = 0;
//   int _personCounter = 1;
//   double _billAmount = 0.0;
//
//   Color _purple = HexColor("#6908D6");
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Container(
//             margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.1),
//             alignment: Alignment.center,
//             color: Colors.white,
//             child: ListView(
//               scrollDirection: Axis.vertical,
//               padding: EdgeInsets.all(20.5),
//               children: <Widget>[
//                 Container(
//                     width: 150,
//                     height: 150,
//                     decoration: BoxDecoration(
//                         color: _purple.withOpacity(0.1),
//                         borderRadius: BorderRadius.circular(12.0)
//                     ),
//                     child: Center(
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: <Widget>[
//                           Text("Total Per Person", style: TextStyle(
//                               fontWeight: FontWeight.normal,
//                               fontSize: 15.0,
//                               color: _purple
//                           )),
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Text("\$ ${calculateTotalPerPerson(_billAmount, _personCounter, _tipPercentage)}", style: TextStyle(
//                                 fontSize: 34.9,
//                                 fontWeight: FontWeight.bold,
//                                 color: _purple
//                             )),
//                           )
//                         ],
//                       ),
//                     )
//                 ),
//                 Container(
//                     margin: EdgeInsets.only(top: 20.0),
//                     padding: EdgeInsets.all(12.0),
//                     decoration: BoxDecoration(
//                         color: Colors.transparent,
//                         border: Border.all(
//                             color: Colors.blueGrey.shade100,
//                             style: BorderStyle.solid
//                         ),
//                         borderRadius: BorderRadius.circular(12.0)
//                     ),
//                     child: Column(
//                         children: <Widget>[
//                           TextField(
//                             keyboardType: TextInputType.numberWithOptions(decimal: true),
//                             style: TextStyle(color: _purple),
//                             decoration: InputDecoration(
//                                 prefixText: "Bill Amount : ",
//                                 prefixIcon: Icon(Icons.attach_money)
//                             ),
//                             onChanged: (String value){
//                               try{
//                                 _billAmount = double.parse(value);
//
//                               }catch(exeption){
//                                 _billAmount = 0.0;
//
//
//                               }
//                             },
//                           ),
//                           Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: <Widget>[
//                               Text("Split", style: TextStyle(
//                                   color: Colors.grey.shade700
//                               ),),
//                               Row(
//                                   children: <Widget>[
//                                     InkWell(
//                                         onTap: (){
//                                           setState((){
//                                             if (_personCounter > 1){
//                                               _personCounter--;
//                                             }else{
//                                               //do nothing
//                                             }
//                                           });
//                                         } ,//onTap
//                                         child: Container(
//                                             width: 40.0,
//                                             height: 40.0,
//                                             margin: EdgeInsets.all(10.0),
//                                             decoration: BoxDecoration(
//                                                 borderRadius: BorderRadius.circular(7.0),
//                                                 color: _purple.withOpacity(0.1)
//                                             ),
//                                             child: Center(
//                                               child: Text(
//                                                   "-", style: TextStyle(
//                                                 color: _purple,
//                                                 fontWeight: FontWeight.bold,
//                                                 fontSize: 17.0,
//                                               )
//                                               ),
//                                             )
//                                         )
//                                     ),
//                                     Text("$_personCounter", style: TextStyle(
//                                         color: _purple,
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 17.0
//                                     )),
//                                     InkWell(
//                                         onTap: (){
//                                           setState((){
//                                             _personCounter ++;
//                                           });
//                                         },
//                                         child: Container(
//                                             width: 40.0,
//                                             height: 40.0,
//                                             margin: EdgeInsets.all(10.0),
//                                             decoration: BoxDecoration(
//                                                 color: _purple.withOpacity(0.1),
//                                                 borderRadius: BorderRadius.circular(7.0)
//                                             ),
//                                             child: Center(
//                                               child: Text("+", style: TextStyle(
//                                                   color: _purple,
//                                                   fontSize: 17.0,
//                                                   fontWeight: FontWeight.bold
//                                               )),
//                                             )
//                                         )
//                                     ),
//                                   ]
//                               )
//
//                             ],
//
//                           ),
//                           //tip
//                           Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: <Widget>[
//                                 Text("Tip", style: TextStyle(
//                                     color: Colors.grey.shade700
//                                 )),
//                                 Padding(
//                                   padding: const EdgeInsets.all(8.0),
//                                   child: Text(" \$ ${(calculateTotalTip(_billAmount, _personCounter, _tipPercentage)).toStringAsFixed(2)}", style: TextStyle(
//                                       color: _purple,
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 17.0
//                                   )),
//                                 )
//                               ]
//                           ),
//
//                           //slider
//                           Column(
//                             children: <Widget>[
//                               Text("$_tipPercentage %", style: TextStyle(
//                                   color: _purple,
//                                   fontSize: 17.0,
//                                   fontWeight: FontWeight.bold
//                               )),
//                               Slider(
//                                   min: 0,
//                                   max: 100,
//                                   activeColor: _purple,
//                                   inactiveColor: Colors.grey,
//                                   divisions: 10,
//                                   value: _tipPercentage.toDouble(),
//                                   onChanged: (double newValue){
//                                     setState((){
//                                       _tipPercentage = newValue.round();
//                                     });
//                                   })
//                             ],
//
//
//                           )
//                         ]
//                     )
//                 ),
//               ],
//             )
//         )
//     );
//   }
//   calculateTotalPerPerson(double billAmount, int splitBy, int tipPercentage){
//     var totalPerPerson = (calculateTotalTip(billAmount, splitBy, tipPercentage) + billAmount) / splitBy;
//
//     return totalPerPerson.toStringAsFixed(2);
//
//   }
//
//   calculateTotalTip(double billAmount, int splitBy, int tipPercentage){
//     double totalTip = 0;
//
//     if(billAmount < 0 || billAmount.toString().isEmpty || billAmount == null){
//       //no go!
//     }else{
//       totalTip = (billAmount * tipPercentage) / 100;
//     }
//
//     return totalTip;
//   }
// }
//
// class QuizApp extends StatefulWidget {
//   const QuizApp({Key? key}) : super(key: key);
//
//   @override
//   _QuizAppState createState() => _QuizAppState();
// }
//
// class _QuizAppState extends State<QuizApp> {
//
//   int _currentQuestionIndex = 0;
//
//   List questionBank = [
//     Question.name("Am I a Cat???", true),
//     Question.name("Are you from Japan?", true),
//     Question.name("Have you ever been to Kyoto?", false)
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("True Citizen"),
//         centerTitle: true,
//         backgroundColor: Colors.blueGrey,
//       ),
//       backgroundColor: Colors.blueGrey,
//
//       //We use Builder here to use a context that is a descendent of scaffold
//       body: Builder(
//         builder: (BuildContext context) => Container(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Center(
//                   child: Image.asset("images/flag.png",
//                     width: 250,
//                     height: 180,),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(12.0),
//                   child: Container(
//                     decoration: BoxDecoration(
//                         color: Colors.transparent,
//                         borderRadius: BorderRadius.circular(14.4),
//                         border: Border.all(
//                             color: Colors.blueGrey.shade400, style: BorderStyle.solid
//                         )
//                     ),
//                     height: 120.0,
//                     child: Center(child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text(questionBank[_currentQuestionIndex].questionText, style: TextStyle(
//                           fontSize: 16.9,
//                           color: Colors.white
//                       )),
//                     )),
//                   ),
//                 ),
//                 Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: <Widget>[
//
//                       RaisedButton(onPressed: () => _prevQuestion(),
//                           color: Colors.blueGrey.shade900,
//                           child: Icon(Icons.arrow_back, color: Colors.white,)
//                       ),
//
//                       RaisedButton(onPressed: () => _checkAnswer(true, context),
//                           color: Colors.blueGrey.shade900,
//                           child: Text("True", style: TextStyle(color: Colors.white))
//                       ),
//
//                       RaisedButton(onPressed: () => _checkAnswer(false, context),
//                           color: Colors.blueGrey.shade900,
//                           child: Text("False", style: TextStyle(color: Colors.white))
//                       ),
//
//                       RaisedButton(onPressed: () => _nextQuestion(),
//                           color: Colors.blueGrey.shade900,
//                           child: Icon(Icons.arrow_forward, color: Colors.white)
//                       )
//                     ]
//                 ),
//                 Spacer()
//               ],
//             )
//
//         ),
//       ),
//     );
//   }
//   _checkAnswer(bool userChoice, BuildContext context){
//     if(userChoice == questionBank[_currentQuestionIndex].isCorrect){
//       //correct answer
//       final snackbar = SnackBar(
//           backgroundColor: Colors.green,
//           duration: Duration(milliseconds: 500),
//           content: Text("Correct!"));
//       Scaffold.of(context).showSnackBar(snackbar);
//
//       _updateQuestion();
//     }else{
//       final snackbar = SnackBar(
//           backgroundColor: Colors.redAccent,
//           duration: Duration(milliseconds: 500),
//           content: Text("Incorrect!"));
//       Scaffold.of(context).showSnackBar(snackbar);
//
//       _updateQuestion();
//     }
//   }
//
//   _nextQuestion(){
//     setState((){
//       _currentQuestionIndex = (_currentQuestionIndex+1) % questionBank.length;
//     });
//   }
//
//   _prevQuestion(){
//     setState((){
//       _currentQuestionIndex = (_currentQuestionIndex-1) % questionBank.length;
//     });
//   }
//
//   _updateQuestion(){
//     _nextQuestion();
//   }
//
//
// }
//
// class  MovieListView extends StatelessWidget {
//   //const MovieListView({Key? key}) : super(key: key);
//
//   final List movies = [
//     "タイタニック",
//     "ブレードランナー",
//     "ランド",
//     "アベンジャーズ",
//     "アバター",
//     "アイアムアレジェンド",
//     "バイキング"
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Movies"),
//         backgroundColor: Colors.blueGrey.shade900,
//       ),
//       backgroundColor: Colors.blueGrey.shade400,
//       body: ListView.builder(
//           itemCount: movies.length,
//           itemBuilder: (BuildContext context, int index) {
//             return Card(
//                 elevation: 4.5,
//                 color: Colors.white,
//                 child: ListTile(
//                   leading: CircleAvatar(
//                       child: Container(
//                           decoration: BoxDecoration(
//                             //color: Colors.blue,
//                               borderRadius: BorderRadius.circular(13.9)
//                           ),
//                           child: Text("H")
//                       )
//                   ),
//                   trailing: Text("..."),
//                   title: Text(movies[index]),
//                   subtitle: Text("sub"),
//                   //onTap: () => debugPrint("Movie name: ${movies.elementAt(index)}")
//                   onTap: (){
//                     Navigator.push(context, MaterialPageRoute(
//                         builder: (context) => MovieListViewDetails(movieName: movies.elementAt(index),)
//                     ));
//                   },
//                 ));
//           } //itemBuilder
//       ),
//     );
//   }
// }
// //new route(screen or page)
// class MovieListViewDetails extends StatelessWidget {
//
//   const MovieListViewDetails({Key? key, required this.movieName}) : super(key: key);
//   final String movieName;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Movies ${this.movieName}"),
//         backgroundColor: Colors.blueGrey.shade900,
//       ),
//       body: Center(
//         child: Container(
//             child: RaisedButton(
//                 child: Text("Go back"),
//                 onPressed: (){
//                   Navigator.pop(context);
//                 }
//             )
//         ),
//       ),
//     );
//   }
// }
//
//
