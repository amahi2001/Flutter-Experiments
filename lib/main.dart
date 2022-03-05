import 'package:flutter/material.dart';
import 'package:testapp/pages/questioon_answer.dart';

void main(){
  runApp(rootWidget());
}

//this is the root widget
class rootWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'I know everything', //title of the tab
      home: QuestionAnswerPage(), //this is the home page
    );
  }
}
