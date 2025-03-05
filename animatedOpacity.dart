import 'package:flutter/material.dart';

class AnimatedOpacityExample extends StatefulWidget {
  @override
  State<AnimatedOpacityExample> createState() => _AnimatedOpacityExampleState();
}

class _AnimatedOpacityExampleState extends State<AnimatedOpacityExample> {
  var myopacity = 1.0;
  bool isvisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Basic Animated Opacity Concept",
          style: (Theme.of(context).textTheme.displayLarge),
        ),
        backgroundColor: Colors.teal.shade400,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: myopacity, // Corrected opacity property
              duration: Duration(seconds: 4),
              curve: Curves.linearToEaseOut,
              child: Container(
                height: 300,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:Colors.redAccent.shade400, 
                ),
                child: Center(
                  child: Text(
                    "I'm not lazy, I'm on energy-saving mode😄",
                    style: TextStyle(color: Colors.white, fontSize: 15,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(height: 11),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (isvisible) {
                    myopacity = 0.0; // to make container invisible
                    isvisible = false;
                  } else {
                    myopacity = 1.0;
                    isvisible = true;
                  }
                });
              },
                style: ElevatedButton.styleFrom(
    backgroundColor: Colors.teal.shade400, // Background color
    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15), // Padding
    textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold), // Text style
    shape: RoundedRectangleBorder( // Rounded corners
      borderRadius: BorderRadius.circular(10),
    ),),
              child: Text('Click me!',style: TextStyle(fontSize: 18,color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}
