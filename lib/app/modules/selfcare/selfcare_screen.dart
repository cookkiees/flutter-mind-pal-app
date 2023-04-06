import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mind_pal_app/app/components/appbar_widget.dart';
import 'package:mind_pal_app/app/modules/selfcare/self_controller.dart';

class SelfCareScreen extends GetView<SelfCareController> {
  const SelfCareScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, 56),
          child: const AppBarWidget(title: "Self-care")),
    );
  }
}
