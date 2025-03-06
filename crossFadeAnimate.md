# Cross Fade Animation in Flutter

## Introduction

This project demonstrates the use of the `AnimatedCrossFade` widget in Flutter to create smooth transition animations between two widgets. By toggling between a text widget and an image widget, we showcase how `AnimatedCrossFade` can improve user interface interactions through seamless fading animations.

## Features

- A fade animation that transitions between two widgets: a text and an image.
- Customizable animation duration and curves.
- A button that toggles the visibility of the two widgets with a fade effect.
- Smooth, reversible animations that create a polished user experience.

## What is `AnimatedCrossFade`?

`AnimatedCrossFade` is a widget that allows you to fade between two child widgets with a transition effect. It is ideal for situations where you need to display only one widget at a time and want a visually appealing way to switch between them.

### Why use `AnimatedCrossFade`?

- **Smooth UI Experience**: It provides a subtle transition between two widgets, avoiding abrupt changes in the UI.
- **Ease of Use**: You simply specify two widgets and a duration, and the transition is automatically handled for you.
- **Highly Customizable**: You can tweak the animation curves, the duration, and even the reverse transition behavior to suit your needs.
- **Improved User Engagement**: Transitions and animations add a layer of interactivity that improves the overall user experience.

## Tutorial Overview

### StatefulWidget

We use a `StatefulWidget` because the state of the widget changes when toggling between the two widgets. The widget rebuilds itself each time the button is pressed, showing either the text or the image.

### Cross-Fade Logic

The widget has a boolean variable that toggles between two states (e.g., `true` and `false`). This variable determines which widget to display, and the `setState()` method is used to update the UI.

### AnimatedCrossFade Widget

`AnimatedCrossFade` accepts two child widgets and controls which one is visible based on the current state. The widget offers options to control the duration of the animation and allows you to customize the animation curves for both entering and exiting the widgets.

Key properties:
- **firstChild** and **secondChild**: The two widgets that will be transitioned between.
- **crossFadeState**: Determines which widget to show (e.g., `CrossFadeState.showFirst` or `CrossFadeState.showSecond`).
- **duration**: Sets the length of the fade animation.
- **firstCurve** and **secondCurve**: Defines the animation curve for the fade-in and fade-out effects.
- **reverseDuration**: Controls the duration of the reverse transition, if applicable.

### Customization Options

- **Animation Curves**: You can customize the fade animations using curves such as `bounceIn`, `easeIn`, or `linear` to create unique effects.
- **Duration**: The speed of the animation can be controlled by setting the duration, making it slower or faster depending on the interaction desired.
- **Reverse Animation**: The reverse animation duration can be independently controlled to give a different exit effect.

### Button to Trigger the Animation

A button is used to toggle between the two states. When pressed, the button triggers the animation, showing either the first or the second widget based on the current state. This interaction allows for easy switching between two UI elements with a smooth fading transition.

### Assets

To display the image, make sure the image file is properly placed in the assets folder and that the `pubspec.yaml` is updated accordingly. The assets directory should be specified correctly to avoid any loading issues.

