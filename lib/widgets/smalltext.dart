import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final String text;
  final Color? color;
  double size;
  SmallText({
    Key? key,
    required this.text,
    this.color = Colors.white,
    this.size = 12,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Gilroy',
        fontSize: size,
        color: color,
      ),
      maxLines: 4,
    );
  }
}
