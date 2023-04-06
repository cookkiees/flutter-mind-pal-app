import 'package:flutter/material.dart';

import '../utils/my_colors.dart';

class UpdatePremiumWidget extends StatelessWidget {
  const UpdatePremiumWidget({
    super.key,
    required this.visible,
    required this.price,
    required this.priceTotal,
  });
  final bool visible;
  final String price;
  final String priceTotal;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: Colors.transparent,
        padding: const EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.only(top: 8, left: 12, bottom: 8),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Visibility(
              visible: visible,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: MyColors.purple,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16))),
                child: const Text("Save 20 %"),
              ),
            ),
            RichText(
              textAlign: TextAlign.start,
              text: TextSpan(
                children: <TextSpan>[
                  const TextSpan(
                    text: '\$',
                    style: TextStyle(
                        fontFamily: "Outfit-bold",
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: MyColors.neutraldDark),
                  ),
                  TextSpan(
                    text: ' $price',
                    style: const TextStyle(
                        fontFamily: "Outfit-bold",
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: MyColors.neutraldDark),
                  ),
                  const TextSpan(
                    text: '  / each seassion',
                    style: TextStyle(
                        fontFamily: "Outfit",
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: MyColors.neutralGrey),
                  ),
                  TextSpan(
                    text: '\n Total \$$priceTotal/mounth',
                    style: const TextStyle(
                        fontFamily: "Outfit",
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: MyColors.neutralGrey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
