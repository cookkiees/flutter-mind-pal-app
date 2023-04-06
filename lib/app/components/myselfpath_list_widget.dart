import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/my_colors.dart';
import 'text_title_widget.dart';

class MySelfPathListWidget extends StatelessWidget {
  const MySelfPathListWidget({
    super.key,
    required this.image,
    required this.title,
    required this.exercises,
  });

  final Widget image;
  final String title;
  final String exercises;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white70,
          border: Border.all(),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Stack(
          children: [
            image,
            Positioned(
              top: 8,
              child: TextTitleWidget(
                title: title,
                fontWeight: FontWeight.w600,
                fontSize: 23,
                color: MyColors.neutraldDark,
              ),
            ),
            Positioned(
              bottom: 10,
              right: 64,
              left: 16,
              child: Container(
                padding: const EdgeInsets.all(8),
                height: 35,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    color: Colors.white70),
                child: Text(
                  exercises,
                  style: const TextStyle(
                    fontSize: 16,
                    fontFamily: "Outfit-bold",
                    fontWeight: FontWeight.w600,
                    color: MyColors.neutraldDark,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              right: 16,
              child: Container(
                  padding: const EdgeInsets.all(8),
                  height: 35,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      color: Colors.white70),
                  child: SvgPicture.asset("assets/icons/icon-saved.svg")),
            )
          ],
        ),
      ),
    );
  }
}
