import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: Center(child: Container(child: Hero(tag: 'move', child: Image.asset('assets/images/cute.jpg')))),
    );
  }
//in both files to make nimation work the value of tag will be same
}
