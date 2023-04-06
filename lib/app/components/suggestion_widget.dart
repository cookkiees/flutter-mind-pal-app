import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/my_colors.dart';

class SuggestionWidget extends StatelessWidget {
  const SuggestionWidget({
    super.key,
    required this.image,
    required this.title,
    required this.titleButton,
  });
  final String image;
  final String title;
  final String titleButton;

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
            Text(
              title,
              style: const TextStyle(
                fontSize: 24,
                fontFamily: "Outfit-bold",
                fontWeight: FontWeight.w600,
                color: MyColors.neutraldDark,
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: MyColors.purple,
                minimumSize: const Size(155, 40),
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
