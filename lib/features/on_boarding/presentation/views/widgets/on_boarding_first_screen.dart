import 'package:aklty/core/utils/styles.dart';
import 'package:aklty/features/on_boarding/presentation/views/widgets/custom_carousel.dart';
import 'package:aklty/features/on_boarding/presentation/views/widgets/indicator_and_button_widget.dart';
import 'package:flutter/material.dart';

class OnBoardingFirstScreen extends StatelessWidget {
  const OnBoardingFirstScreen({
    super.key,
    required this.controller,
  });

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 100,
          ),
          const CustomCarousel(),
          const SizedBox(
            height: 80,
          ),
           Text(
            "أستمتع بوجبتك المفضله",
            style: Styles.styleSemiBold25(context),
          ),
          const SizedBox(
            height: 40,
          ),
           Text(
            "بطل تفكير كتير في هتاكل إيه ومتى، إحنا هنا علشان نوفرلك خطط وجبات شخصية معمولة مخصوص ليك. كل وجبة متجهزة بعناية وبطريقة تناسب احتياجاتك وظروف يومك، عشان تلاقي اللي يناسبك بدون تعب أو قلق. سهلنا عليك كل حاجة، وما عليك غير تستمتع بوقتك وتسيب الباقي علينا.",
            style: Styles.styleRegular16(context),
            textAlign: TextAlign.justify,
          ),
          const Spacer(),
          IndicatorAndButtonWidget(
            controller: controller,
            textColor: Colors.white,
            buttonColor: Colors.deepPurple.shade900,
          ),
        ],
      ),
    );
  }
}
