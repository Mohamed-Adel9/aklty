import 'dart:async';

import 'package:aklty/core/functions/custom_linear_gradient.dart';
import 'package:aklty/core/utils/styles.dart';
import 'package:aklty/features/splash/presentation/views/widgets/animated_gif.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

@override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: customLinearGradient(
          colorList: [
            Colors.blue.shade200,
            Colors.purple.shade100,
            Colors.purple.shade50,
          ],
          stops: [0.0, 0.45, .9],
        ),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedGif(),

        ],
      ),
    );
  }
}
