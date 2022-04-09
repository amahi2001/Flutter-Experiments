import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

class QuestionAnswerPage extends StatefulWidget {
  @override
  State<QuestionAnswerPage> createState() => _QuestionAnswerPageState();
}

Future<void> signUp() async {
  await Firebase.initializeApp();

  try {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: 'amahi2001@gmail.com',
      password: '12345678',
    );
    print('Successfully signed up');
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      print('The password provided is too weak.');
    } else if (e.code == 'email-already-in-use') {
      print('The account already exists for that email.');
    }
  } catch (e) {
    print(e.toString());
  }
}

class _QuestionAnswerPageState extends State<QuestionAnswerPage> {
  // Text editing controller for question text field
  TextEditingController _questionFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //this creates an appbar at the top my page
        title: Text('I Know Everything'),
        centerTitle: true,
        elevation: 0, //shadow below the appBar
        backgroundColor: Colors.orange[600],
      ),
      body: ListView(
        children: [
          ElevatedButton(
              onPressed: () async {
                await signUp();
              },
              child: Text('Sign Up')),
        ],
      ),
    );
  }
}
