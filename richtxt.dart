import 'package:flutter/material.dart';

class rich_text extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Rich Text Implementation',
          style: TextStyle(fontSize: 28),
        ),
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: RichText(
            text: TextSpan(
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 30,
                ), //default text style
                children: <TextSpan>[
              TextSpan(text: 'Hello'),
              TextSpan(
                  text: ' World!!!\n',
                  style: TextStyle(
                      fontSize: 45,
                      //fontWeight: FontWeight.bold,
                      // fontStyle: FontStyle.italic,
                      color: Colors.purpleAccent,
                      fontFamily: 'FontMain')),
              TextSpan(text: 'I am'),
              TextSpan(
                  text: ' Flutter ',
                  style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic)),
              TextSpan(text: 'developer!')
            ])),
      ),
    );
  }
}
