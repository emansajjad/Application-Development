import 'package:flutter/material.dart';

class contraint_Concept extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ContraintBox In Flutter',
          style: TextStyle(fontSize: 28),
        ),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
              minHeight: 200,
              maxHeight: 400,
              minWidth: 200,
              maxWidth:
                  300), //i have applied restriction on my child widget that is text am not able to see values after maximum limt
          child: SingleChildScrollView(
            // if i remove this you will not able to read whole paragraph bcz of contraint
            child: Text(
              'Development is the continuous process of growth, change, and improvement that occurs on both personal and societal levels. It is the engine that drives progress, enabling individuals, communities, and nations to evolve and adapt in an ever-changing world. In personal development, it involves the cultivation of skills, knowledge, and self-awareness, allowing individuals to reach their full potential and navigate lifes challenges with resilience and purpose. This journey often requires a commitment to lifelong learning, embracing new experiences, and reflecting on ones values and goals.',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.pinkAccent,
                  fontStyle: FontStyle.italic),
              overflow: TextOverflow.fade,
            ),
          ), //If i remove the SingleChildScrollView, the ConstrainedBox will enforce the height and width limits, causing any overflowing text to be truncated or hidden based on the overflow setting (in your case, TextOverflow.fade.
        ),
      ),
    );
  }
}
