import 'package:aklty/core/utils/colors.dart';
import 'package:aklty/core/utils/styles.dart';
import 'package:aklty/features/authentication/presentation/views/login_home_view.dart';
import 'package:aklty/features/on_boarding/presentation/views/widgets/allergen_buttons.dart';
import 'package:aklty/features/on_boarding/presentation/views/widgets/indicator_and_button_widget.dart';
import 'package:flutter/material.dart';

class OnBoardingSecondScreen extends StatelessWidget {
  const OnBoardingSecondScreen({
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
            height: 50,
          ),
          IndicatorAndButtonWidget(
            controller: controller,
            textColor: AppColors().primaryColor,
            buttonColor: Colors.white,
            pageCount: 2,
            nextScreen: const LoginHomeView(),
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            textDirection: TextDirection.rtl,
            "هل لديك حساسية من أي مكونات؟",
            style: Styles.styleBold25(context),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            textDirection: TextDirection.rtl,
            "لتقديم أفضل تجربة نظام غذائي مخصصة تلبي احتياجاتك وأهدافك الصحية، نحتاج إلى جمع المزيد من التفاصيل عن حالتك الصحية وتفضيلاتك الغذائية. هذا يساعدنا في تصميم خطة مثالية تناسبك تمامًا.",
            style: Styles.styleRegular16(context),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 50,
          ),
          AllergenButtons(),
          const Spacer(),
        ],
      ),
    );
  }
}
