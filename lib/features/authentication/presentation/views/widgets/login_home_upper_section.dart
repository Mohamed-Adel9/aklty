import 'package:aklty/core/utils/colors.dart';
import 'package:aklty/generated/assets.dart';
import 'package:flutter/material.dart';

class LoginHomeUpperSection extends StatelessWidget {
  const LoginHomeUpperSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          // Background Image
          Container(
            width: MediaQuery.sizeOf(context).width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Assets.imagesLogin),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Gradient Overlay
          Container(
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                stops: const [0, 0.6],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  AppColors().primaryColor,
                  Colors.white10,
                ],
              ),
            ),
          ),
        ],
      )
      ,
    );
  }
}
