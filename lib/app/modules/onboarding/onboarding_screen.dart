import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mind_pal_app/app/utils/my_colors.dart';
import '../../components/header_text_widget.dart';
import 'onboarding_controller.dart';

class OnboardingScreen extends GetView<OnboardingController> {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
      finishButtonText: 'Continue',
      finishButtonTextStyle: const TextStyle(
          fontFamily: "Outfit-bold",
          color: Colors.white,
          fontSize: 18.0,
          fontWeight: FontWeight.bold),
      onFinish: () {
        // Navigator.push(
        //   context,
        //   CupertinoPageRoute(
        //     builder: (context) => const RegisterPage(),
        //   ),
        // );
      },
      finishButtonStyle:
          const FinishButtonStyle(backgroundColor: MyColors.purple),
      skipTextButton: const Text(
        'Skip',
        style: TextStyle(
          fontFamily: "Outfit-bold",
          fontSize: 16,
          color: MyColors.purple,
          fontWeight: FontWeight.w600,
        ),
      ),
      controllerColor: MyColors.purple,
      totalPage: 3,
      headerBackgroundColor: Colors.white,
      pageBackgroundColor: Colors.white,
      background: [Container(), Container(), Container()],
      speed: 1.8,
      pageBodies: [
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset("assets/images/logo-joy.svg", height: 200),
              const SizedBox(
                height: 16,
              ),
              RichText(
                text: const TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Hey! I\'m ',
                      style: TextStyle(
                          fontFamily: "Outfit",
                          color: MyColors.neutraldDark,
                          fontSize: 28.0,
                          fontWeight: FontWeight.w600),
                    ),
                    TextSpan(
                      text: 'MindPal',
                      style: TextStyle(
                          fontFamily: "Outfit-bold",
                          color: MyColors.purple,
                          fontSize: 28.0,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'I\'m here to help you self-care your \nmental health like the ideal you ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Outfit-bold",
                  color: MyColors.neutralGrey,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const HeaderTextWidget(
                title: "Building Your Space",
                subtitle:
                    "Add challenges that you would like \n help with to your space",
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height - 284,
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: controller.svgImages.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1,
                    mainAxisSpacing: 16,
                  ),
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Container(
                        padding: const EdgeInsets.only(
                          left: 16,
                          top: 16,
                        ),
                        width: 155.5,
                        height: 168,
                        decoration: BoxDecoration(
                          border: Border.all(color: MyColors.neutraldDark),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                controller.svgTitle[index],
                                style: const TextStyle(
                                    fontFamily: "Outfit-bold",
                                    color: MyColors.neutraldDark,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            const SizedBox(
                              height: 24,
                            ),
                            SvgPicture.asset(
                              controller.svgImages[index],
                              height: 100,
                            )
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              )
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const HeaderTextWidget(
                title: "Adding to your space...",
                subtitle: "Choose a style which works best \n for you",
              ),
              const SizedBox(height: 100),
              SizedBox(
                height: 400,
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 2,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    childAspectRatio: 2 / 1,
                    mainAxisSpacing: 16,
                  ),
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Container(
                        padding:
                            const EdgeInsets.only(left: 16, top: 16, right: 16),
                        width: 327,
                        height: 326,
                        decoration: BoxDecoration(
                          border: Border.all(color: MyColors.neutraldDark),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  controller.svgTitlePerson[index],
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontFamily: "Outfit-bold",
                                    color: MyColors.neutraldDark,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  controller.svgSubtitlePerson[index],
                                  textAlign: TextAlign.start,
                                  style: const TextStyle(
                                    fontFamily: "Outfit-bold",
                                    color: MyColors.neutralGrey,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: SvgPicture.asset(
                                controller.svgImagePerson[index],
                                height: 170,
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
