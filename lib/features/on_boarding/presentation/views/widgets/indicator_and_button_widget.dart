import 'package:aklty/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IndicatorAndButtonWidget extends StatelessWidget {
  const IndicatorAndButtonWidget({
    super.key,
    required this.controller,
    required this.textColor,
    required this.buttonColor,
  });

  final PageController controller;
  final Color textColor;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20),
      child: Row(
        children: [
          SmoothPageIndicator(
            controller: controller, // PageController
            count: 3,
            effect: const ExpandingDotsEffect(), // your preferred effect
          ),
          const Spacer(),
          TextButton(

            onPressed: () {
              controller.nextPage(
                  curve: Curves.easeInOut,
                  duration: const Duration(milliseconds: 500));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: buttonColor,
            ),
            child: Text(
              "التالي",
              style: Styles.styleRegular20(context).copyWith(
                color: textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
