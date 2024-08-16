import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class iconsConcept extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Icons And Awesome Icons Concept In Flutter',
          style: TextStyle(fontSize: 30),
        ),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.play_circle_fill_outlined,
              size: 100,
              color: Colors.orangeAccent,
            ), // this is the implementation of pre-build icons in flutter
            SizedBox(
              width: 50,
            ),
            FaIcon(
              FontAwesomeIcons.instagram,
              size: 100,
              color: Colors.purpleAccent,
            ) // this is the implementation of awesome icons in flutter,
            //this library is for advance icons we can say that pool of icons
          ],
        ),
      ),
    );
  }
}
