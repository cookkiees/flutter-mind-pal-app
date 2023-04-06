import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mind_pal_app/app/utils/my_colors.dart';
import '../../components/advantage_listtile_widget.dart';
import '../../components/update_premium_widget.dart';
import 'subscription_controller.dart';

class SubscriptionScreen extends GetView<SubscriptionController> {
  const SubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            expandedHeight: 250,
            flexibleSpace:
                SvgPicture.asset("assets/images/logo-hand.svg", height: 300),
          ),
          SliverToBoxAdapter(
            child: RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'Take better care \nof yourself with MindPal',
                    style: TextStyle(
                        fontFamily: "Outfit-bold",
                        fontSize: 27,
                        fontWeight: FontWeight.w600,
                        color: MyColors.neutraldDark),
                  ),
                  TextSpan(
                    text: '\n\nGet the best of MindPal, and yourself.',
                    style: TextStyle(
                        fontFamily: "Outfit",
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: MyColors.neutraldDark),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
              child: Column(
                children: const [
                  UpdatePremiumWidget(
                    visible: true,
                    price: '12.99',
                    priceTotal: '200',
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  UpdatePremiumWidget(
                    visible: false,
                    price: '15.99',
                    priceTotal: '63',
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: const [
                AdvantageListTileWidget(
                  title:
                      "Live text session every week with a \nqualified therapist",
                ),
                AdvantageListTileWidget(
                  title: "Risk free. Cancel anytime in the first week",
                ),
                AdvantageListTileWidget(
                  title: "Unlimited messaging support outside live section",
                )
              ],
            ),
          )
        ],
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(260, 60),
          backgroundColor: MyColors.purple,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: const Text(
          "Try MindPal 7 days for free",
          style: TextStyle(
            fontFamily: "Outfit-bold",
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
