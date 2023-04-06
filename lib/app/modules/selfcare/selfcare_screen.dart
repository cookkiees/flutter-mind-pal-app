import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mind_pal_app/app/components/appbar_widget.dart';
import 'package:mind_pal_app/app/components/suggestion_widget.dart';
import 'package:mind_pal_app/app/components/text_title_widget.dart';
import 'package:mind_pal_app/app/modules/selfcare/self_controller.dart';
import 'package:mind_pal_app/app/routings/app_routers.dart';

import '../../components/myselfpath_list_widget.dart';
import '../../utils/my_colors.dart';

class SelfCareScreen extends GetView<SelfCareController> {
  const SelfCareScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 56),
        child: const AppBarWidget(title: "Self-care"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextTitleWidget(title: "Unlock full library"),
              const SizedBox(
                height: 16,
              ),
              SuggestionWidget(
                image: "assets/images/logo-joy-4.svg",
                titleButton: "Unlock Premium",
                size: const Size(200, 50),
                onPressed: () => Get.toNamed(AppRouters.subscription),
                widget: RichText(
                  text: const TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: '100+ ',
                        style: TextStyle(
                            fontSize: 23,
                            fontFamily: "Outfit-bold",
                            fontWeight: FontWeight.bold,
                            color: MyColors.purple),
                      ),
                      TextSpan(
                        text:
                            'Therapeutic \nexercises to beat \nstress and more',
                        style: TextStyle(
                          fontSize: 23,
                          fontFamily: "Outfit-bold",
                          fontWeight: FontWeight.w600,
                          color: MyColors.neutraldDark,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 24.0, bottom: 16),
                child: Divider(
                  indent: 16,
                  endIndent: 16,
                  color: MyColors.neutralGrey,
                ),
              ),
              const TextTitleWidget(title: "Tool Packs"),
              SizedBox(
                height: MediaQuery.of(context).size.height / 1.7,
                width: MediaQuery.of(context).size.width,
                child: GridView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: controller.tollPack.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1 / 1.3,
                      mainAxisSpacing: 4),
                  itemBuilder: (context, index) {
                    return MySelfPathListWidget(
                      image: Positioned(
                        bottom: 0,
                        left: 9,
                        child: SvgPicture.asset(
                          controller.tollPack[index],
                          height: 180,
                        ),
                      ),
                      title: controller.title[index],
                      exercises: controller.exercises[index],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
