# Flutter AnimatedOpacity Example

This project demonstrates the basic usage of `AnimatedOpacity` in Flutter. The app shows a container whose visibility can be toggled between fully visible and invisible using a button. This is a basic demonstration of how you can use opacity in Flutter to show or hide widgets with smooth transitions.

## Key Concepts:

- **AnimatedOpacity**: A widget in Flutter that allows you to animate changes to a widget's opacity (visibility). When you change the opacity value, it smoothly transitions from one state to another over a specified duration.
- **Opacity**: The opacity value is between `0.0` (completely invisible) and `1.0` (completely visible).
- **State Management**: The widget’s opacity is toggled using `setState()` to update the UI when the button is pressed.

## How It Works:

1. **AnimatedOpacity Widget**: This widget wraps around a container. Its `opacity` property controls the visibility, and the animation duration defines how long it takes to transition from visible to invisible (or vice versa).
2. **ElevatedButton**: The button triggers the `setState()` method, which updates the opacity of the container, toggling its visibility.
3. **Container**: The container includes custom styling with rounded corners, a background color, and a centered text message.

## Code Overview:

- **Opacity Toggle**: The container's opacity alternates between `1.0` (visible) and `0.0` (invisible) when the button is clicked.
- **Duration**: The animation takes 4 seconds to complete, providing a smooth fade in/out effect.
- **Curves**: The curve used is `Curves.linearToEaseOut`, which controls the speed of the opacity transition over time.
- **StatefulWidget**: Since the opacity value changes dynamically, a `StatefulWidget` is used to manage the state of the widget.
