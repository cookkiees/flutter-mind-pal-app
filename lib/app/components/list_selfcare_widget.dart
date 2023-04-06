import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/my_colors.dart';

class ListSelfCareWidget extends StatelessWidget {
  const ListSelfCareWidget({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.time,
    required this.icon,
    required this.icons,
    required this.borderColor,
    required this.titleColor,
    required this.subtitleColor,
  });

  final String image;
  final String title;
  final String subtitle;
  final String time;
  final String icon;
  final String icons;
  final Color borderColor;
  final Color titleColor;
  final Color subtitleColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      height: 100,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            image,
            height: 70,
          ),
          const SizedBox(
            width: 16,
          ),
          RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: title,
                  style: TextStyle(
                    fontFamily: "Outfit-bold",
                    color: titleColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  text: subtitle,
                  style: TextStyle(
                    fontFamily: "Outfit-bold",
                    color: subtitleColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: time,
                  style: const TextStyle(
                    fontFamily: "Outfit-bold",
                    fontSize: 13,
                    color: MyColors.neutraldDark,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 95,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset(icon),
                ),
                const SizedBox(
                  width: 8,
                ),
                GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset(icons),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
