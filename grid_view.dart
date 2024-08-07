import 'package:flutter/material.dart';

class grid_view extends StatefulWidget {
  @override
  State<grid_view> createState() => _grid_viewState();
}

class _grid_viewState extends State<grid_view> {
  @override
  Widget build(BuildContext context) {
    // A list of colors is created, which will be used to fill the grid items.
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
          "Grid View Concepts",
          style: TextStyle(fontSize: 28),
        ),
        backgroundColor: Colors.purpleAccent,
      ),

      // GridView.count creates a grid with a fixed number of items per row.
      body: GridView.count(
        crossAxisSpacing: 30, // Horizontal spacing between the grid items.
        mainAxisSpacing: 30, // Vertical spacing between the grid items.
        crossAxisCount: 6, // Number of items per row in the grid.

        // The children property is a list of widgets that will be displayed in the grid.
        children: [
          // Each Container is wrapped in a Padding widget to add padding around it.
          Padding(
            padding:
                const EdgeInsets.all(8.0), // Padding around each grid item.
            child: Container(
              color: arrColors[
                  0], // The background color of the Container, set from the color list.
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
