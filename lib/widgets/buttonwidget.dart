import 'package:flutter/material.dart';
import 'package:nftproject/widgets/bigtext.dart';

class ButtonWidget extends StatelessWidget {
  final Color color;
  final Color fontColor;
  final String text;
  double widht;
  double height;
  double radius;
  ButtonWidget({
    super.key,
    required this.color,
    required this.text,
    required this.fontColor,
    this.height = 60,
    required this.widht,
    this.radius = 40,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: widht,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: color,
      ),
      child: BigText(
        text: text,
        color: fontColor,
        size: 16,
      ),
    );
  }
}
