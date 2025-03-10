import 'package:flutter/material.dart';

class LearnGradient extends StatelessWidget {
  const LearnGradient({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Colors Gradient Concept In Flutter',
          style: Theme.of(context).textTheme.displayMedium,
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff149ec77ab), Color(0xff7873f5)],
              begin: FractionalOffset(0.0, 1.0),
              end: FractionalOffset(1.1, 1.1)
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [Color(0xff7873f5), Color(0xff149ec77ab)],
            // center: Alignment.topLeft
          ),
        ),
        child: Center(child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('"Life without color is like a soul without passion — dull, empty, and incomplete."',style: Theme.of(context).textTheme.displayMedium,),
        )),
      ),
    );
  }
}
