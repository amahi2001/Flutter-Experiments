import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class QuestionAnswerPage extends StatefulWidget {
  @override
  State<QuestionAnswerPage> createState() => _QuestionAnswerPageState();
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
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 0.5 * MediaQuery.of(context).size.width,
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'Ask a Yes/No Question',
                    border: OutlineInputBorder()),
              ),
            ),
            SizedBox(height: 20),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: () {}, child: Text('Get Answer')),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Reset'),
                  ),
                ])
          ]),
    );
  }
}
