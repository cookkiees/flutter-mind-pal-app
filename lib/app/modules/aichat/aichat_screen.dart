import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mind_pal_app/app/modules/aichat/aichat_controller.dart';
import 'package:mind_pal_app/app/utils/my_colors.dart';

import '../../components/chat_widget.dart';

class AIChatScreen extends GetView<AIChatController> {
  const AIChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios_new,
            size: 24,
            color: MyColors.neutraldDark,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(135, 36),
                elevation: 0,
                side: const BorderSide(color: MyColors.purple),
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                "Book a therapist",
                style: TextStyle(
                    color: MyColors.purple,
                    fontSize: 14,
                    fontFamily: "Outfit-bold",
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.flag_outlined,
              size: 24,
              color: MyColors.neutraldDark,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 40.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Just an AI",
                      style: TextStyle(
                        fontFamily: "Outfit-bold",
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade600,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    ChatWidget(
                      timeChat: "3:43 PM",
                      chat: "Hallo, Vicky. I'm MindFul",
                      color: Colors.grey.shade100,
                      fontColor: MyColors.neutraldDark,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    ChatWidget(
                      timeChat: "3:43 PM",
                      color: Colors.grey.shade100,
                      fontColor: MyColors.neutraldDark,
                      chat:
                          "An smiley AI that you can chat and talk about your current mental help-care.",
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    SvgPicture.asset(
                      "assets/images/logo-joy-2.svg",
                      height: 150,
                    ),
                  ],
                ),
              ),
              SvgPicture.asset(
                "assets/images/logo-joy-5.svg",
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 120, top: 32),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    SizedBox(
                      height: 8,
                    ),
                    ChatWidget(
                      timeChat: "4:26 PM",
                      chat: "Are you human?",
                      color: MyColors.purple,
                      fontColor: Colors.white,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    ChatWidget(
                      timeChat: "4:27 PM",
                      fontColor: Colors.white,
                      color: MyColors.purple,
                      chat: "Also can you help me this?",
                    ),
                    SizedBox(
                      height: 8,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.all(16),
        height: 100,
        color: Colors.grey.shade100,
        child: TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: SvgPicture.asset("assets/icons/Frame.svg"),
            suffixIcon: SvgPicture.asset("assets/icons/Icon Button.svg"),
            hintStyle: TextStyle(
              fontFamily: "Outfit-bold",
              fontWeight: FontWeight.w600,
              color: Colors.grey.shade500,
            ),
            hintText: "Say something to me please",
          ),
        ),
      ),
    );
  }
}
