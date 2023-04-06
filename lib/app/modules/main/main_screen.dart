import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mind_pal_app/app/modules/terapist/terapist_screen.dart';
import 'package:mind_pal_app/app/utils/my_colors.dart';
import '../home/home_screen.dart';
import 'main_controller.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration.zero, () {});
    return GetBuilder<MainController>(builder: (controller) {
      return Scaffold(
        backgroundColor: const Color(0XFFFFFFFF),
        body: IndexedStack(
          index: controller.tabIndex,
          children: [
            const HomeScreen(),
            const TerapistScreen(),
            Center(child: SvgPicture.asset("assets/icons/User.svg")),
            Center(child: SvgPicture.asset("assets/icons/Message.svg")),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.tabIndex,
          selectedLabelStyle: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.bold,
            fontFamily: "Outfit-bold",
          ),
          unselectedLabelStyle: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.bold,
            fontFamily: "Outfit-bold",
          ),
          selectedItemColor: MyColors.purple,
          unselectedItemColor: MyColors.neutralLightGrey,
          onTap: controller.changeTabIndex,
          backgroundColor: Colors.transparent,
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 12,
          showUnselectedLabels: true,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
              icon: controller.tabIndex == 0
                  ? Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      child: SvgPicture.asset(
                        "assets/icons/Home.svg",
                        height: 26,
                        colorFilter: const ColorFilter.mode(
                            MyColors.purple, BlendMode.srcIn),
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      child: SvgPicture.asset(
                        "assets/icons/Home.svg",
                        height: 26,
                        colorFilter: const ColorFilter.mode(
                            MyColors.neutralLightGrey, BlendMode.srcIn),
                      ),
                    ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: controller.tabIndex == 1
                  ? Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      child: SvgPicture.asset(
                        "assets/icons/Document.svg",
                        height: 26,
                        colorFilter: const ColorFilter.mode(
                            MyColors.purple, BlendMode.srcIn),
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      child: SvgPicture.asset(
                        "assets/icons/Document.svg",
                        height: 26,
                        colorFilter: const ColorFilter.mode(
                            MyColors.neutralLightGrey, BlendMode.srcIn),
                      ),
                    ),
              label: 'Terapist',
            ),
            BottomNavigationBarItem(
              icon: controller.tabIndex == 2
                  ? Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      child: SvgPicture.asset(
                        "assets/icons/User.svg",
                        height: 26,
                        colorFilter: const ColorFilter.mode(
                            MyColors.purple, BlendMode.srcIn),
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      child: SvgPicture.asset(
                        "assets/icons/User.svg",
                        height: 26,
                        colorFilter: const ColorFilter.mode(
                            MyColors.neutralLightGrey, BlendMode.srcIn),
                      ),
                    ),
              label: 'Selft-care',
            ),
            BottomNavigationBarItem(
              icon: controller.tabIndex == 3
                  ? Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      child: SvgPicture.asset(
                        "assets/icons/Message.svg",
                        height: 26,
                        colorFilter: const ColorFilter.mode(
                            MyColors.purple, BlendMode.srcIn),
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      child: SvgPicture.asset(
                        "assets/icons/Message.svg",
                        height: 26,
                        colorFilter: const ColorFilter.mode(
                            MyColors.neutralLightGrey, BlendMode.srcIn),
                      ),
                    ),
              label: 'Journal',
            ),
          ],
        ),
      );
    });
  }
}
