import 'package:flutter/material.dart';

class CrossFadeLearn extends StatefulWidget {
  @override
  State<CrossFadeLearn> createState() => _CrossFadeLearnState();
}

class _CrossFadeLearnState extends State<CrossFadeLearn> {
  bool isfirst=true;
  void reload(){
    setState(() {
      isfirst = !isfirst; // Toggles between true and false
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cross Fade Animation',style: Theme.of(context).textTheme.displayLarge,),
        backgroundColor: Colors.grey.shade800,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedCrossFade(firstChild: Text("Press here for instant magic! ✨",
            style: TextStyle(color: Colors.pinkAccent.shade400,fontSize: 25,
            fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),),
             secondChild: Image.asset('assets/images/pic.jpg',height: 250,width: 300,),
              crossFadeState: isfirst ? CrossFadeState.showFirst
              :CrossFadeState.showSecond,
               duration: Duration(seconds: 4),
               firstCurve: Curves.bounceIn,
               secondCurve: Curves.bounceOut,
            //   sizeCurve: Curves.bounceInOut,mostly used when two widgets are of same size
               reverseDuration:Duration(seconds: 4),
               ),
               SizedBox(height: 11,),
               ElevatedButton(onPressed: (){
              
                setState(() {
                  reload();
                });
               },
                style: ElevatedButton.styleFrom(
    backgroundColor: Colors.grey.shade800, // Background color
    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15), // Padding
    textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold), // Text style
    shape: RoundedRectangleBorder( // Rounded corners
      borderRadius: BorderRadius.circular(10),
    ),),
                child: Text("Hit Me!",style: TextStyle(color: Colors.white),))
          ],
        ),
      ),
    );
  }
}