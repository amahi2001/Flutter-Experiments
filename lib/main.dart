import 'package:flutter/material.dart';
import 'package:testapp/pages/question_answer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
