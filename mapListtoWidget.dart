import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MapListLearn extends StatelessWidget {
  var arr = [
    'Oliver',
    'Amelia',
    'Ethan',
    'Sophia',
    'Liam',
    'Isla',
    'Noah',
    'Ava',
    'Jackson',
    'Mia',
    'Oliver',
    'Amelia',
    'Ethan',
    'Sophia',
    'Liam',
    'Isla',
    'Noah',
    'Ava',
    'Jackson',
    'Mia',
  ];

  MapListLearn({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Mapping List To Widget Concept',
          style: Theme.of(context).textTheme.displayLarge,
        ),
        backgroundColor: Colors.deepPurpleAccent.shade100,
        centerTitle: true,
      ),
      body: ListView(
       children: arr.map((value){ //whenever we want to show different data on each index but desig is same we can use this function
           return Center(
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(
                decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent.shade100,
                  borderRadius: BorderRadius.circular(28)
                ),
                child: Center(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(value,style: Theme.of(context).textTheme.displayMedium,),
                )),
               ),
             ),
           );
        }).toList()
      ),
    );
  }
}
//we can use .map func to show differ data in similar design patterns also use maps in array to make more patterns
