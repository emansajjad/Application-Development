import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:workspace/util.dart';
import 'package:workspace/widget/custombtn.dart';

class button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Customization On Buttons Widget!!!",
          style: TextStyle(fontSize: 29),
        ),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 50,
              child: roundedbtn(
                btnName: 'Login',
                icon: Icon(Icons.login_sharp),
                func: () {
                  print('Button Is Costomized!!!');
                },
                txtstyle: mtextStyle15(),
              ),
            ),
            Container(
              height: 21,
            ),
            Container(
              width: 150,
              height: 50,
              child: roundedbtn(
                btnName: 'Press me',
                bgclr: Colors.lightGreenAccent,
                func: () {
                  print('Button Is Costomized!!!');
                },
                txtstyle: mtextStyle15(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
