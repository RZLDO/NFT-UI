import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nftproject/widgets/bigtext.dart';
import 'package:nftproject/widgets/smalltext.dart';

class ListViewItem extends StatelessWidget {
  final String image;
  final String text;
  const ListViewItem({
    super.key,
    required this.image,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.bottomLeft,
          margin: EdgeInsets.only(right: 15),
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        ),
      ],
    );
  }
}
