import 'package:flutter/material.dart';

class LearnRippleEffect extends StatefulWidget {
  const LearnRippleEffect({super.key});

  @override
  State<LearnRippleEffect> createState() => _LearnRippleEffectState();
}

class _LearnRippleEffectState extends State<LearnRippleEffect> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  final List<double> radList = [50.0, 100.0, 150.0, 200.0, 250.0]; // List for different circle sizes

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
      lowerBound: 0.0,
      upperBound: 1.0,
    )..repeat(); // Repeats the animation in a loop
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ripple Effect In Flutter',
          style: Theme.of(context).textTheme.displayLarge,
        ),
        backgroundColor: Colors.deepPurple.shade400,
        centerTitle: true,
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            for (var radius in radList) buildMyCon(radius), // Create multiple ripple circles
            const Icon(Icons.call_made_rounded, size: 34, color: Colors.black), // Icon at the center
          ],
        ),
      ),
    );
  }

  Widget buildMyCon(double rad) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return Container(
          width: rad * _animationController.value,
          height: rad * _animationController.value,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.deepPurple.withOpacity(1.0 - _animationController.value),
          ),
        );
      },
    );
  }
}
