import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mind_pal_app/app/components/appbar_widget.dart';
import 'package:mind_pal_app/app/modules/journal/journal_controller.dart';
import 'package:mind_pal_app/app/utils/my_colors.dart';

class JournalScreen extends GetView<JournalController> {
  const JournalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 56),
        child: const AppBarWidget(title: "My Journal"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/images/logo-joy-5.svg"),
            const SizedBox(height: 16),
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'Awaiting to start',
                    style: TextStyle(
                      fontSize: 28,
                      color: MyColors.neutraldDark,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: '\nOur Journy',
                    style: TextStyle(
                      fontSize: 28,
                      color: MyColors.purple,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text:
                        '\n\nOur conversations and insights will \nappear here',
                    style: TextStyle(
                      fontSize: 16,
                      color: MyColors.neutralGrey,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
