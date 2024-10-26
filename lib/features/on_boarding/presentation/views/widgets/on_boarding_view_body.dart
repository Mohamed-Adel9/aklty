import 'package:aklty/features/on_boarding/presentation/views/widgets/on_boarding_first_screen.dart';
import 'package:aklty/features/on_boarding/presentation/views/widgets/on_boarding_second_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  final PageController _pageController = PageController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      onPageChanged: (index) {
        setState(() {
          currentPage = index;
        });
      },
      children:  [
        OnBoardingFirstScreen(controller: _pageController,),
        OnBoardingSecondScreen(controller: _pageController,),

      ],
    );
  }
}


