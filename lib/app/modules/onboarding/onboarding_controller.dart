import 'package:get/get.dart';

class OnboardingController extends GetxController {
  final List<String> svgImages = [
    'assets/images/logo-1.svg',
    'assets/images/logo-2.svg',
    'assets/images/logo-3.svg',
    'assets/images/logo-4.svg',
    'assets/images/logo-5.svg',
    'assets/images/logo-6.svg',
  ];

  final List<String> svgTitle = [
    'Anxiety',
    'Confidence',
    'Depression',
    'Stress',
    'Relationship',
    'Motivation',
  ];

  final List<String> svgImagePerson = [
    'assets/images/image-person-1.svg',
    'assets/images/image-person-2.svg',
  ];

  final List<String> svgTitlePerson = [
    'Self-Care',
    'Guided support',
  ];

  final List<String> svgSubtitlePerson = [
    'I prefer working on \nchallenges by myself',
    'I would work with a \ntherapist if it was \naffordable',
  ];
}
