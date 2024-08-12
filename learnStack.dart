import 'package:flutter/material.dart';

class learnStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Stack In Flutter',
          style: TextStyle(fontSize: 29),
        ),
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: Container(
          height: 1000,
          width: 1000,
          child: Stack(
            children: [
              Positioned(
                top: 80,
                left: 80,
                child: Container(
                  width: 500,
                  height: 500,
                  color: Colors.pinkAccent,
                ),
              ),
              Positioned(
                top: 60,
                left: 60,
                child: Container(
                  width: 500,
                  height: 500,
                  color: Colors.lightBlueAccent,
                ),
              ),
              Positioned(
                top: 40,
                left: 40,
                child: Container(
                  width: 500,
                  height: 500,
                  color: Colors.yellowAccent,
                ),
              ),
              Positioned(
                top: 20,
                left: 20,
                child: Container(
                  width: 500,
                  height: 500,
                  color: Colors.blueGrey,
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  child: Center(
                    child: Text(
                      'I am the last child in Stack!!!!',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  height: 500,
                  width: 500,
                  color: Colors.redAccent,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
