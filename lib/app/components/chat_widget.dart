import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({
    super.key,
    required this.chat,
    required this.color,
    required this.fontColor,
    required this.timeChat,
  });

  final String chat;
  final String timeChat;
  final Color color;
  final Color fontColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          color: color),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            chat,
            style: TextStyle(
                fontFamily: "Outfit-bold",
                fontSize: 19,
                fontWeight: FontWeight.w500,
                color: fontColor),
          ),
          const SizedBox(height: 8),
          Text(
            timeChat,
            style: TextStyle(
                fontFamily: "Outfit-bold",
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: fontColor),
          ),
        ],
      ),
    );
  }
}
