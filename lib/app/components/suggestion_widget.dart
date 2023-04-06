import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/my_colors.dart';

class SuggestionWidget extends StatelessWidget {
  const SuggestionWidget({
    super.key,
    required this.image,
    required this.widget,
    required this.titleButton,
    this.size = const Size(155, 40),
    this.onPressed,
  });
  final String image;
  final Widget widget;
  final String titleButton;
  final Size? size;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SvgPicture.asset(
          image,
          height: 150,
        ),
        Column(
          children: [
            widget,
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: MyColors.purple,
                minimumSize: size,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                titleButton,
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: "Outfit-bold",
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
