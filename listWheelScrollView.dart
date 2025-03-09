import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListWheelLearn extends StatelessWidget {
  var arrIndex = [1,2,3,4,5,6,7,8,9,10];

  ListWheelLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '3D Lists in Flutter',
          style: Theme.of(context).textTheme.displayLarge,
        ),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        foregroundColor: Colors.pinkAccent,
      ),
      body: ListWheelScrollView(
        itemExtent: 200,
        children: arrIndex.map((value) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Center(child: Text('$value',style: TextStyle(fontSize: 25,color: Colors.white),)),
             
            ),
          );
        }).toList(),
      ),
    );
  }
}
