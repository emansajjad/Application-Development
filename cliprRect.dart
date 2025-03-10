import 'package:flutter/material.dart';

class CliprRectLearn extends StatelessWidget {
  const CliprRectLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ClipRRect Concept In Flutter",style: Theme.of(context).textTheme.displayLarge,),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body:Center(
        child: ClipRRect(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(20)),
          clipBehavior: Clip.antiAliasWithSaveLayer,
         child: Image.asset('assets/images/clip.jpg',fit: BoxFit.fill,height: 300,width: 400,),
        
        ),
      ) ,
    );
  }

}