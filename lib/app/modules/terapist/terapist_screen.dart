import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mind_pal_app/app/components/appbar_widget.dart';
import 'package:mind_pal_app/app/components/header_list_widget.dart';
import 'package:mind_pal_app/app/modules/terapist/terapist_controller.dart';
import 'package:mind_pal_app/app/utils/my_colors.dart';

import '../../components/myselfpath_list_widget.dart';
import '../../components/text_title_widget.dart';

class TerapistScreen extends GetView<TerapistController> {
  const TerapistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 56),
        child: const AppBarWidget(title: "Vicky's Space"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
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
                  itemCount: controller.card.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return HeaderListWidget(
                      svgImage: controller.card[index],
                      title: controller.title[index],
                    );
                  },
                ),
              ),
              const SizedBox(height: 8),
              const TextTitleWidget(title: "UPCOMING SESSION"),
              const SizedBox(height: 8),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  decoration: BoxDecoration(
                    border: Border.all(color: MyColors.neutralLightGrey),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SvgPicture.asset(
                        "assets/images/logo-joy-3.svg",
                        height: 100,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "In 2 Days",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Outfit-bold",
                              fontWeight: FontWeight.w700,
                              color: MyColors.purple,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Tue, 22 Mar \n10:30AM",
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: "Outfit-bold",
                              fontWeight: FontWeight.w700,
                              color: MyColors.neutraldDark,
                            ),
                          )
                        ],
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_vert,
                          size: 32,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 8),
              const TextTitleWidget(title: "MY SELF-PATH"),
              const SizedBox(height: 16),
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
