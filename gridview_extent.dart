import 'package:flutter/material.dart';

class gridview_extent extends StatefulWidget {
  @override
  State<gridview_extent> createState() => _gridview_extentState();
}

class _gridview_extentState extends State<gridview_extent> {
  @override
  Widget build(BuildContext context) {
    // List of colors used to color each grid item.
    var arrColors = [
      Colors.brown,
      Colors.amberAccent,
      Colors.pinkAccent,
      Colors.blue,
      Colors.deepOrangeAccent,
      Colors.black,
      Colors.purple,
      Colors.redAccent,
      Colors.yellowAccent,
      Colors.lightGreen,
      Colors.red,
      Colors.indigoAccent,
      Colors.limeAccent
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Grid View Extent",
          style: TextStyle(fontSize: 28),
        ),
        backgroundColor: Colors.purpleAccent,
      ),
      body: GridView.extent(
        maxCrossAxisExtent:
            100, // Maximum width of each grid item in the cross axis.
        crossAxisSpacing: 20, // Horizontal spacing between grid items.
        mainAxisSpacing: 20, // Vertical spacing between grid items.

        // The children property is a list of widgets that will be displayed in the grid.
        children: [
          // Each grid item is wrapped in a Padding widget to add spacing around it.
          Padding(
            padding: const EdgeInsets.all(8.0), // Padding around the grid item.
            child: Container(
              color: arrColors[
                  0], // Background color of the container, taken from the arrColors list.
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: arrColors[1],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: arrColors[2],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: arrColors[3],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: arrColors[4],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: arrColors[5],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: arrColors[6],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: arrColors[7],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: arrColors[8],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: arrColors[9],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: arrColors[10],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: arrColors[11],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: arrColors[12],
            ),
          ),
        ],
      ),
    );
  }
}
