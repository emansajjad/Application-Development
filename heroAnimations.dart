import 'package:flutter/material.dart';
import 'package:selflearnings/heroanimDetailpage.dart';

class HeroAnimationLearn extends StatelessWidget {
  const HeroAnimationLearn({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: Text("Hero Animations",style: Theme.of(context).textTheme.displayLarge,),
      backgroundColor: Colors.deepPurple,
      centerTitle: true,
    ),
    body: Center(
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder : (context)=>DetailPage()));
        },
        child: Container(
          child: Hero(tag:'move',
          child:Image.asset('assets/images/cute.jpg',height: 200,width: 150,) ,),
        ),
      ),
    ),
   );
  }

}