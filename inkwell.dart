import 'package:flutter/material.dart';

class ink_concept extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Inkwell Widget Implementation',
          style: TextStyle(fontSize: 28),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: InkWell(
          //inkwell is used to make widget pressable in order to perform some action
          onTap: () {
            print('Tapped On Container'); //you can write your logic
          },
          onDoubleTap: () {
            print('Double Tapped');
          },
          child: Container(
              height: 200,
              width: 200,
              color: Colors.deepPurple,
              child: Center(
                child: InkWell(
                  onLongPress: () {
                    print('Long Press On Text');
                  },
                  child: Text('Click Here',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                ),
              )),
        ),
      ),
    );
  }
}
