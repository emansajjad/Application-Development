import 'package:flutter/material.dart';

class pos_wid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Positioned Widget In Flutter',
          style: TextStyle(fontSize: 28),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.lightBlue,
        child: Stack(
          children: [
            Positioned(
              bottom: 45,
              right: 45,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
