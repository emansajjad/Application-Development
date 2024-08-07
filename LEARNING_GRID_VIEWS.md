# Flutter Grid View Examples

This repository contains examples of different ways to implement grid views in Flutter. These examples will help you understand the basics of grid layouts and how to use them effectively in your Flutter applications.

## Overview

Grid views are a fundamental UI component in Flutter that allow you to display a grid of items in a scrollable layout. In this repository, you'll find three different implementations of grid views, each showcasing different ways to manage and display grid items.

## Files

### 1. `grid_view.dart`

This file demonstrates the use of `GridView.count`, which allows you to specify a fixed number of columns in the grid. This approach is useful when you want to have a predictable layout with a fixed number of columns regardless of the screen size.

Key Concepts:
- `crossAxisCount`: The number of columns in the grid.
- `crossAxisSpacing`: Horizontal spacing between grid items.
- `mainAxisSpacing`: Vertical spacing between grid items.
- `Padding`: Adds spacing around each grid item.

Usage:
```dart
GridView.count(
  crossAxisCount: 6, // Number of columns
  crossAxisSpacing: 30, // Spacing between columns
  mainAxisSpacing: 30, // Spacing between rows
  children: [
    // List of grid items
  ],
)


GridView.extent, allows to specify the maximum width of each grid item. This approach dynamically adjusts the number of columns based on the available screen width and the maximum item width.
GridView.extent(
  maxCrossAxisExtent: 100, // Maximum width of each grid item
  crossAxisSpacing: 20, // Spacing between columns
  mainAxisSpacing: 20, // Spacing between rows
  children: [
    // List of grid items
  ],
)


GridView.builder, allows you to build grid items on demand. This approach is efficient for large datasets, as it only builds items that are visible on the screen.
builder concept will use when you want to fetch data from internet
GridView.builder(
  itemBuilder: (context, index) {
    // Build each grid item
  },
  itemCount:  // Total number of items,
  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
    maxCrossAxisExtent: 100, // Maximum width of each grid item
    mainAxisSpacing: 11, // Spacing between rows
    crossAxisSpacing: 11, // Spacing between columns
  ),
)
