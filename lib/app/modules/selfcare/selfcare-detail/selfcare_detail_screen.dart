import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../components/list_selfcare_widget.dart';
import '../../../components/text_title_widget.dart';
import '../../../routings/app_routers.dart';
import '../../../utils/my_colors.dart';
import '../self_controller.dart';

class SelfCareDetailScreen extends GetView<SelfCareController> {
  const SelfCareDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () => Get.toNamed(AppRouters.onboarding),
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: MyColors.neutraldDark,
              size: 24,
            )),
        title: const Text(
          "Sleep Stories & Sounds ",
          style: TextStyle(
            fontFamily: "Outfit-bold",
            color: MyColors.neutraldDark,
            fontSize: 20,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const TextTitleWidget(title: "6 Exercises"),
                const SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    backgroundColor: MyColors.purple,
                  ),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 16),
                    child: const Text(
                      "Unlock All",
                      style: TextStyle(
                        fontFamily: "Outfit-bold",
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.0,
                  ),
                  child: ListSelfCareWidget(
                    image: "assets/icons/self-1.svg",
                    title: "Sleep Story",
                    subtitle: "\nThe Mystiscal Fog",
                    time: "\n\n36 min",
                    icon: "assets/icons/Heart.svg",
                    icons: "assets/icons/Info.svg",
                    titleColor: MyColors.neutralGrey,
                    subtitleColor: MyColors.neutraldDark,
                    borderColor: MyColors.purple,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 1.3,
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    itemCount: controller.logoSelf.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: ListSelfCareWidget(
                          image: controller.logoSelf[index],
                          title: "Sleep Story",
                          subtitle: "\nThe Mystiscal Fog",
                          time: "\n\n36 min",
                          icon: "assets/icons/Lock.svg",
                          icons: "assets/icons/Info.svg",
                          titleColor: Colors.grey.shade400,
                          subtitleColor: Colors.grey.shade500,
                          borderColor: const Color.fromARGB(255, 211, 190, 255),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
