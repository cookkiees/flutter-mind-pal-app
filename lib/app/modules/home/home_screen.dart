import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../components/myselfpath_list_widget.dart';
import '../../components/suggestion_widget.dart';
import '../../components/text_title_widget.dart';
import '../../utils/my_colors.dart';
import 'home_controller.dart';
import '../../components/header_list_widget.dart';
import '../../components/appbar_widget.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 56),
        child: const AppBarWidget(
          title: "Vicky's Space",
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextTitleWidget(
                title: "SELF-CARE",
              ),
              const SizedBox(height: 32),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 120,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: controller.emoji.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return HeaderListWidget(
                      svgImage: controller.emoji[index],
                      title: controller.title[index],
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        TextTitleWidget(title: "MY MINDPAL AI"),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            "How to interect?",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Outfit-bold",
                              fontWeight: FontWeight.bold,
                              color: MyColors.neutraldDark,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 24),
                    const SuggestionWidget(
                      image: 'assets/images/logo-joy-2.svg',
                      widget: Text(
                        "How are you \nfelling today?",
                        style: TextStyle(
                          fontSize: 24,
                          fontFamily: "Outfit-bold",
                          fontWeight: FontWeight.w600,
                          color: MyColors.neutraldDark,
                        ),
                      ),
                      titleButton: 'Reply now',
                    ),
                  ],
                ),
              ),
              const Divider(
                indent: 16,
                endIndent: 16,
                color: MyColors.neutralGrey,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: TextTitleWidget(title: "MY SELF-PATH"),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 3.7,
                width: MediaQuery.of(context).size.width,
                child: GridView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: controller.mySelfPath1.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1 / 1.2,
                      mainAxisSpacing: 4),
                  itemBuilder: (context, index) {
                    return MySelfPathListWidget(
                      image: Positioned(
                        bottom: 0,
                        left: 9,
                        child: SvgPicture.asset(
                          controller.mySelfPath1[index],
                          height: 180,
                        ),
                      ),
                      title: controller.mySelfPathTitle1[index],
                      exercises: controller.exercises1[index],
                    );
                  },
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 3.7,
                width: MediaQuery.of(context).size.width,
                child: GridView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: controller.mySelfPath2.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1 / 1.2,
                      mainAxisSpacing: 4),
                  itemBuilder: (context, index) {
                    return MySelfPathListWidget(
                      image: Positioned(
                        top: 64,
                        right: 0,
                        left: 0,
                        child: SvgPicture.asset(
                          controller.mySelfPath2[index],
                          height: 118,
                        ),
                      ),
                      title: controller.mySelfPathTitle2[index],
                      exercises: controller.exercises2[index],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
