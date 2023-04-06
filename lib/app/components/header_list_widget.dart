import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/my_colors.dart';

class HeaderListWidget extends StatelessWidget {
  const HeaderListWidget({
    super.key,
    required this.svgImage,
    required this.title,
  });

  final String svgImage;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 9.0),
      child: SizedBox(
        width: 88,
        child: Column(
          children: [
            SvgPicture.asset(
              svgImage,
              height: 75,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                fontFamily: "Outfit-bold",
                fontWeight: FontWeight.bold,
                color: MyColors.neutraldDark,
              ),
            )
          ],
        ),
      ),
    );
  }
}
