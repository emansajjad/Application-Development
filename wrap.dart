import 'package:flutter/material.dart';

class wrap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Wrap Concept',
            style: TextStyle(fontSize: 28),
          ),
          backgroundColor: Colors.greenAccent,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Wrap(
            direction: Axis
                .vertical, //by-default it is horizental, to change direction you can use this property
            spacing: 11,
            runSpacing: 11, //for spacing between cross axis
            alignment: WrapAlignment.start,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.redAccent,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.blueGrey,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.yellowAccent,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.orangeAccent,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.lightGreenAccent,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.lightBlueAccent,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.pinkAccent,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.grey,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.brown,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.lightBlueAccent,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.deepOrangeAccent,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.grey,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.redAccent,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.deepPurpleAccent,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.yellow,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.pink,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.blueGrey,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.redAccent,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.blueGrey,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.yellowAccent,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.orangeAccent,
              ),
            ],
          ),
        ));
  }
}
