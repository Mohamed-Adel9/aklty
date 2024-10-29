import 'package:aklty/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IndicatorAndButtonWidget extends StatelessWidget {
  const IndicatorAndButtonWidget({
    super.key,
    required this.controller,
    required this.textColor,
    required this.buttonColor,
    required this.pageCount, // Added pageCount parameter
    required this.nextScreen, // Added nextScreen parameter
  });

  final PageController controller;
  final Color textColor;
  final Color buttonColor;
  final int pageCount; // Number of pages in PageView
  final Widget nextScreen; // Destination screen widget

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20),
      child: Row(
        children: [
          SmoothPageIndicator(
            controller: controller,
            count: pageCount,
            effect: const ExpandingDotsEffect(),
          ),
          const Spacer(),
          TextButton(
            onPressed: () async {
              await navToNextPage(context);
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

  Future<void> navToNextPage(BuildContext context) async {
    final currentPage = controller.page?.round() ?? 0;
    if (currentPage == pageCount - 1) {
      // If on the last page, navigate to the next screen
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => nextScreen,
        ),
      );
    } else {
      // Move to the next page
      await controller.nextPage(
        curve: Curves.easeInOut,
        duration: const Duration(milliseconds: 500),
      );
    }
  }
}
