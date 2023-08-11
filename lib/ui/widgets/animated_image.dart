import 'package:flutter/material.dart';
import 'package:portfolio/util/app_assets.dart';

class AnimatedImage extends StatefulWidget {
  const AnimatedImage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AnimatedImageState createState() => _AnimatedImageState();
}

class _AnimatedImageState extends State<AnimatedImage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);

    _animation = Tween<double>(
      begin: -0.04, // Start position (top)
      end: 0.01, // End position (bottom)
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Transform.translate(
          offset:
              Offset(0, MediaQuery.of(context).size.height * _animation.value),
          child: Image.asset(
            AppAssets.pro1,
            fit: BoxFit.fill,
            height: 300,
            width: 250,
          ),
        );
      },
    );
  }
}
