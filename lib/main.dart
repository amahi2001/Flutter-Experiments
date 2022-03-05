import 'package:flutter/material.dart';
import 'package:testapp/pages/question_answer.dart';

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
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: QuestionAnswerPage(), //this is the home page
    );
  }
}
