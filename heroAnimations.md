# **Flutter Hero Animation Example**

## **Introduction**

This project demonstrates the use of **Hero Animations** in a Flutter app. Hero animations allow for smooth transitions between screens when a common UI element is shared. In this example, an image moves seamlessly between two pages, creating a visually appealing user experience.

---

## **Features**

- **Hero Animation**: A shared element transition between two pages.
- **Navigation**: Tapping on an image triggers navigation from the first page (home) to the second page (detail).
- **Smooth Transition**: The image moves seamlessly from the original page to the new one with an animation.
- **Tappable Elements**: Users can interact with the image to trigger the transition.

---

## **How It Works**

This project consists of two primary screens:

1. **Home Screen**:
   - Displays an image.
   - The image is wrapped in a **Hero** widget, which allows it to be part of a shared element transition.
   - Tapping on the image triggers navigation to the **Detail Screen**.
   
2. **Detail Screen**:
   - Displays the same image that is wrapped in a **Hero** widget with the same `tag` as the image on the home screen.
   - The shared `tag` between the images on both screens creates the transition effect.

When the image is tapped on the **Home Screen**, Flutter automatically animates the transition to the **Detail Screen**, making the image appear to smoothly move between the two screens. This is a key feature of **Hero animations** in Flutter, where the widget animates across screens during a route transition.

---

## **Project Structure**

- **Home Screen**: Displays the tappable image wrapped in a **Hero** widget.
- **Detail Screen**: Displays the same image, also wrapped in a **Hero** widget to create the shared transition effect.

Both screens are designed to work together, with the **Hero** widget providing the common link for the animation.

### **Key Concepts:**

- **Hero Widget**: A widget that enables a shared element transition between two routes (screens). It ensures that the element looks consistent during the transition.
  
- **Tag**: The `tag` is a unique identifier for each **Hero** widget. The same tag must be used on both screens for Flutter to understand which element should be animated between the two routes.

---


### **3. Implementing the Hero Animation**

- **Hero Widget**: Wrap the shared image with a **Hero** widget on both the **Home Screen** and the **Detail Screen**. The `tag` for both **Hero** widgets must be the same. This `tag` allows Flutter to identify which element is being animated between the two screens.

- **Navigation**: Use Flutter's `Navigator.push` function to navigate from the **Home Screen** to the **Detail Screen** when the image is tapped.

### **4. Run the App**

To run the app on your device or emulator, use:
```bash
flutter run
```
Once the app is running, tap the image on the home screen, and watch it smoothly transition to the detail page.

---
### **Resources**

- Official Flutter documentation for **Hero Animations**: [Flutter Hero Animations](https://flutter.dev/docs/development/ui/animations/hero-animations)
- Flutter **Navigator** and **Routing**: [Flutter Navigation](https://flutter.dev/docs/cookbook/navigation/navigation-basics)

---

## **Author**

This project was developed to demonstrate how easy it is to implement a **Hero Animation** in a Flutter app. You can customize and expand on this foundation to build richer transitions and user interfaces for your own Flutter projects.

---

By following this guide, you should be able to understand the basic principles of **Hero animations** and how to implement them in your Flutter applications.
