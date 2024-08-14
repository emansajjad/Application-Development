The main UI of the app is built in the wrap widget class, which extends StatelessWidget. Here's a breakdown of the key components:

AppBar
Displays the title "Wrap Concept" with a custom font size and background color.
Wrap Widget
Direction: The Wrap widget is set to Axis.vertical, meaning the child widgets are arranged vertically and wrap onto the next column when there isn't enough vertical space.
Spacing: Controls the space between widgets in the vertical direction (spacing: 11) and between the lines or columns (runSpacing: 11).
Children: A series of Container widgets, each with a fixed height, width, and different background colors, are used as children of the Wrap widget.
Sample Code

// The Wrap widget in Flutter is a layout widget that arranges its children in a horizontal
// or vertical line and wraps them onto the next line if there isn't enough space.
// It's particularly useful when you have a collection of widgets that need to be displayed in a flexible layout,
// where the number of items or their size isn't fixed.
