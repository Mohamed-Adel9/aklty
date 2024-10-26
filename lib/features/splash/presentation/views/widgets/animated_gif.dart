import 'package:aklty/core/functions/custom_linear_gradient.dart';
import 'package:aklty/core/utils/styles.dart';
import 'package:aklty/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:aklty/generated/assets.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';

class AnimatedGif extends StatelessWidget {
  const AnimatedGif({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      child: FlutterSplashScreen.scale(
        animationDuration: const Duration(milliseconds: 1000),
        childWidget: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Assets.imagesAkltyLogo),
            const SizedBox(
              height: 20,
            ),
             Text(
              "أكلتي",
              style: Styles.styleBold50(context),
            ),
          ],
        ),
        gradient: customLinearGradient(colorList: [
          Colors.blue.shade200,
          Colors.purple.shade100,
          Colors.purple.shade50,
        ], stops: [0.0, 0.45, .9]),
        nextScreen: const OnBoardingView(),
        duration: const Duration(milliseconds: 3500),
        onInit: () async {
          debugPrint("onInit");
        },
        onEnd: () async {
          debugPrint("onEnd 1");
        },
      ),
    );
  }
}
