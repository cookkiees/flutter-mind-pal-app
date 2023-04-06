import 'package:flutter/material.dart';
import '../utils/my_colors.dart';

class TextTitleWidget extends StatelessWidget {
  const TextTitleWidget({
    super.key,
    required this.title,
    this.fontWeight = FontWeight.w500,
    this.fontSize = 16,
    this.color = MyColors.neutralGrey,
  });
  final String title;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: fontSize,
          fontFamily: "Outfit-bold",
          fontWeight: fontWeight,
          color: color,
        ),
      ),
    );
  }
}
