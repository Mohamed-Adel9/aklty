import 'package:aklty/core/utils/styles.dart';
import 'package:aklty/features/on_boarding/presentation/views/widgets/custom_carousel.dart';
import 'package:aklty/generated/assets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 23.0),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomCarousel(),
          SizedBox(
            height: 80,
          ),
          Text(
            "أستمتع بوجبتك المفضله",
            style: Styles.semiBold25,
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "بطل تفكير كتير في هتاكل إيه ومتى، إحنا هنا علشان نوفرلك خطط وجبات شخصية معمولة مخصوص ليك. كل وجبة متجهزة بعناية وبطريقة تناسب احتياجاتك وظروف يومك، عشان تلاقي اللي يناسبك بدون تعب أو قلق. سهلنا عليك كل حاجة، وما عليك غير تستمتع بوقتك وتسيب الباقي علينا.",
            style: Styles.regular16,
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
