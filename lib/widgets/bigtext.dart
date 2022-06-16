import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  final String text;
  final Color? color;
  final double size;
  BigText({
    Key? key,
    required this.text,
    this.color = Colors.white,
    this.size = 24,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Gilroy',
        fontWeight: FontWeight.w700,
        color: color,
        fontSize: size,
      ),
    );
  }
}
