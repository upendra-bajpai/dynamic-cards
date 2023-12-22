import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

class FadeTextAnimation extends StatefulWidget {
  final String text;
  final TextStyle? style;
  final bool continuous;

  FadeTextAnimation({required this.text, this.style, this.continuous = false});

  @override
  _FadeTextAnimationState createState() => _FadeTextAnimationState();
}

class _FadeTextAnimationState extends State<FadeTextAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: Key(widget.text),
      onVisibilityChanged: (VisibilityInfo info) {
        if (info.visibleFraction == 1) {
          _controller.forward().then((value) {
            if (widget.continuous) {
              _controller.repeat(reverse: true);
            }
          });
        } else {
          if (_controller.isAnimating) {
            _controller.reset();
          }
        }
      },
      child: FadeTransition(
        opacity: _animation,
        child: Text(
          widget.text,
          style: widget.style ?? TextStyle(fontSize: 28.0),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.stop();
    _controller.dispose();
    super.dispose();
  }
}
