import 'package:flutter/material.dart';

class callback extends StatefulWidget {
  @override
  State<callback> createState() => _callbackState();
}

class _callbackState extends State<callback> {
  myCallback() {
    print('Callback executed');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Call back Function Concept'),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text(
            'Click Me!!',
            style: TextStyle(fontSize: 29),
          ),
          onPressed: myCallback,
        ),
      ),
    );
  }
}
//A callback function in Dart is a function that is passed as an argument to another function and is executed at a later time, 
//typically after some event or operation has completed.
// This is commonly used in asynchronous programming, where you want to perform some action after a delay, a network request, or some other time-consuming task.
