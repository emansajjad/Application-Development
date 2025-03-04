// ignore_for_file: unused_label

import 'package:flutter/material.dart';

class Animate extends StatefulWidget {
  const Animate({super.key});

  @override
  State<Animate> createState() => _AnimateState();
}

class _AnimateState extends State<Animate> {
  var _width = 200.0; //width value will be in double always so its in point
  var _height = 250.0; //similar in this case for height
  bool flag = true;  // for toggle button
  Decoration mydec = BoxDecoration(
    borderRadius: BorderRadius.circular(21),
    color: Colors.pinkAccent.shade200
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Start of Animations",style: Theme.of(context).textTheme.displayLarge,),
        backgroundColor: Colors.deepPurple.shade400,
        centerTitle: true,
      ),
        body: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: AnimatedContainer(
                width: _width,
                height: _height,
              decoration:   mydec,
                duration: const Duration(seconds: 3),
                curve: Curves.bounceIn,
              ),
            ),
            SizedBox(height: 11,),
          
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    if(flag){
                    _width = 250;
                    _height = 200;
                    mydec=BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.deepPurple.shade400
                     );
                    flag=false;}
                    else{
                      _width=200;
                      _height=250;
                       mydec=BoxDecoration(
                      borderRadius: BorderRadius.circular(21),
                      color: Colors.pinkAccent.shade200
                     );
                      flag=true;
                    }
                  });
                },
                 style: ElevatedButton.styleFrom(
    backgroundColor: Colors.deepPurple, // Background color
    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15), // Padding
    textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold), // Text style
    shape: RoundedRectangleBorder( // Rounded corners
      borderRadius: BorderRadius.circular(10),
    ),),
    // shadowColor: Colors.black, // Shadow color
    // elevation: 8, // Elevation for shadow depth
                      
                child:  Text("Animate",style: TextStyle(fontSize: 18,color: Colors.white),),), 
             ],
          ),
        ));
  }}