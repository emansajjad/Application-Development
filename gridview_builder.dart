import 'package:flutter/material.dart';

class gridview_builder extends StatelessWidget {
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
          "Grid View Builder",
          style: TextStyle(fontSize: 28),
        ),
        backgroundColor: Colors.purpleAccent,
      ),

      // The body of the Scaffold contains a GridView built using GridView.builder.
      body: GridView.builder(
        // itemBuilder is a function that returns a widget for each item in the grid.
        itemBuilder: (context, index) {
          // Creating a container with a background color from the arrColors list.
          return Container(
            color: arrColors[index],
          );
        },
        // itemCount defines how many items the GridView will display.
        itemCount: arrColors.length,

        // gridDelegate controls the layout of the grid's items.
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 100, // Maximum width of each grid item.
          mainAxisSpacing: 20, // Vertical spacing between grid items.
          crossAxisSpacing: 20, // Horizontal spacing between grid items.
        ),
        //We can also use SliverGridDelegateWithFixedCrossAxisCount to create a grid with a fixed number of columns (cross-axis count). This approach is straightforward when you know exactly how many columns you want in your grid, regardless of the screen size
      ),
    );
  }
}
