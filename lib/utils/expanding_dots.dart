import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety_flutter3/flutter_swiper_null_safety_flutter3.dart';

class ExpandingDotsIndicator extends AnimatedWidget {
  final SwiperController controller;
  final int itemCount;
  final double dotSize;
  final double expansionFactor;
  final Color activeDotColor;
  final Color dotColor;

  ExpandingDotsIndicator({
    required this.controller,
    required this.itemCount,
    this.dotSize = 8.0,
    this.expansionFactor = 2.0,
    this.activeDotColor = Colors.blue,
    this.dotColor = Colors.grey,
  }) : super(listenable: controller);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(itemCount, (index) {
        double scale = 1.0;
        if (true||controller.index<=itemCount) {
          scale = (controller.index - index).toDouble();
          scale = (1 - (scale.abs() * .5)).clamp(0.0, 1.0);
          scale = 1 + (expansionFactor - 1) * scale;
        }
        return Container(
          width: dotSize ,
          height: dotSize * scale,
          margin: EdgeInsets.symmetric(vertical: dotSize / 2),
          decoration: BoxDecoration(
            color: controller.index.round() == index ? activeDotColor : dotColor,
            borderRadius: BorderRadius.circular(dotSize / 2),
          ),
        );
      }),
    );
  }
}
