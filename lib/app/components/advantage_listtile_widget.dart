import 'package:flutter/material.dart';

import '../utils/my_colors.dart';

class AdvantageListTileWidget extends StatelessWidget {
  const AdvantageListTileWidget({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.add, color: MyColors.purple),
      title: Text(
        title,
        style: const TextStyle(
            fontSize: 17, fontFamily: "Outfit", fontWeight: FontWeight.w600),
      ),
    );
  }
}
