import 'package:flutter/material.dart';

class LearnTweenAnimation extends StatefulWidget {
  const LearnTweenAnimation({super.key});

  @override
  State<LearnTweenAnimation> createState() => _LearnTweenAnimationState();
}

class _LearnTweenAnimationState extends State<LearnTweenAnimation> with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late Animation<Color?> colorAnimation;
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    
    // Initialize the AnimationController first
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 20),
    );
    
    // Create the Tween animation for size
    animation = Tween<double>(begin: 0.0, end: 200.0).animate(animationController)
      ..addListener(() {
        setState(() {
          // Trigger rebuild when the animation value changes
        });
      });

    // Create the ColorTween animation for color
    colorAnimation = ColorTween(begin: Colors.blueAccent.shade200, end: Colors.redAccent.shade200)
        .animate(animationController)
      ..addListener(() {
        setState(() {
          // Trigger rebuild when the color animation changes
        });
      });

    // Start the animation
    animationController.forward();
  }

  @override
  void dispose() {
    // Dispose the controller to free resources
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tween Animation',
          style: Theme.of(context).textTheme.displayLarge,
        ),
        backgroundColor: Colors.blueAccent.shade200,
      ),
      body: Center(
        child: Container(
          width: animation.value,
          height: animation.value,
          color: colorAnimation.value,
        ),
      ),
    );
  }
}
