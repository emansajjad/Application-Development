# Basic Animated Container Concept

This is a simple Flutter file that demonstrates how to use animations. The main focus of the app is an animated box that changes its size, shape, and color when you press a button.

## How It Works

### Animated Container
- The app uses an `AnimatedContainer` widget, which allows the box to smoothly transition between different sizes, shapes, and colors over a period of time. 
- Instead of changing instantly, the box will grow or shrink, and its color will fade from one color to another, creating a smooth animation effect.

### Toggle Button
- There is a button labeled "Animate" in the app. When you press this button, the size, color, and shape of the box will change.
- The button acts like a switch: pressing it once changes the box, and pressing it again switches it back to the original state.

### Curves (Bounce Effect)
- The animation uses a "bounce" effect, so when the box changes size, it does so in a way that looks like it's bouncing into place. This makes the movement look more playful and natural.

### Decoration (BoxDecoration)
- The box's look is controlled by something called `BoxDecoration`, which allows the app to change its color and the roundness of its corners. For example, the box can switch between being a pink box with slightly rounded corners and a purple box with more rounded corners.

### State Management
- The app keeps track of whether the box is in its original state or its animated state using something called a "flag" (a simple true/false value).
- Every time the button is pressed, the app checks the flag and updates the box’s size, color, and shape accordingly. This is done using Flutter's `setState()` function, which tells the app to rebuild and apply the new changes.

## Summary of Concepts

- **AnimatedContainer**: This allows the box to smoothly change its size, color, and shape with animation.
- **BoxDecoration**: This controls the box’s color and the roundness of its corners.
- **Button Toggle**: The button switches the box between two states (original and animated).
- **Curves**: Adds a bouncing effect to the animation, making it look more dynamic.
- **State Management**: The app uses a flag (true/false) to manage the current state of the box.
