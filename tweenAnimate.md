# Tween Animation in Flutter

This repository demonstrates the use of **Tween animations** in Flutter to create smooth transitions for size and color changes in a widget over a specific duration of time.

## Overview

The file animates a `Container` widget that grows in size and changes its color over 20 seconds. This is achieved using Flutter's animation system, particularly `Tween`, `AnimationController`, and `Animation`. The app uses a `StatefulWidget` to control and trigger the animation updates. Here's a breakdown of the key concepts used:

### Tween Animation

A **Tween** in Flutter stands for "in-betweening," which refers to transitioning between two values over a given duration. In this app:

- A `Tween<double>` animates the size of the container, changing its width and height from 0.0 to 200.0 over 20 seconds.
- A `ColorTween` animates the color of the container from `blueAccent` to `redAccent`.

The **Tween** doesn’t perform the animation itself; instead, it defines how to interpolate between values over time.

### Animation Controller

An **AnimationController** is responsible for managing the timing of an animation. It specifies how long the animation should last and when it should start or stop.

In this example:
- The `AnimationController` has a duration of 20 seconds.
- It controls both the size (`Tween<double>`) and color (`ColorTween`) animations.
- The controller is started by calling `animationController.forward()`.

### Mixin: `SingleTickerProviderStateMixin`

This app uses the `SingleTickerProviderStateMixin`, which is added to the state class. The mixin provides a `Ticker` for the `AnimationController`. A ticker is essentially responsible for calling a function on every frame while the animation is running. 

Using this mixin ensures that the `AnimationController` efficiently rebuilds the widget when necessary.

### setState and Listeners

In the `initState` method:
- Both the size and color animations use the `addListener` method to notify the framework that the animation value has changed.
- Inside the listener, `setState` is called, which triggers a rebuild of the widget with the new animation values (size and color) in each frame.

### dispose

The `dispose` method ensures that resources allocated for the animation are released when the widget is no longer used. This is essential to prevent memory leaks in Flutter apps.

---

## How it Works

1. The app starts with a container of size `0x0` and a blue color.
2. The `AnimationController` starts the animations when the widget is initialized.
3. As time passes, the container grows in size and transitions to a red color.
4. The animation completes after 20 seconds.

## Code Structure

- **`LearnTweenAnimation`**: The main widget that controls the animations.
- **`AnimationController`**: Controls the duration and timing of the animation.
- **`Tween<double>` and `ColorTween`**: Handle the interpolation of the size and color, respectively.
- **`SingleTickerProviderStateMixin`**: Provides the necessary ticker to the `AnimationController`.

---

## Conclusion

This Flutter file demonstrates the usage of **Tween animation** to smoothly transition between different values over time. It combines the power of `AnimationController`, `Tween`, and Flutter's state management to create smooth, fluid animations. The app showcases how you can animate multiple properties (like size and color) simultaneously in Flutter.
