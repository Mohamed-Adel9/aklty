import 'package:aklty/core/utils/styles.dart';
import 'package:aklty/generated/assets.dart';
import 'package:flutter/material.dart';

class LoginLogoWidget extends StatelessWidget {
  const LoginLogoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: -180,
          left: -100,
          child: Container(
            width: 500,
            height: 500,
            decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage(Assets.imagesCircle))),
            child: Padding(
              padding: const EdgeInsets.only(top: 150.0,left: 50),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "اكلتي",
                    style: Styles.styleBold50(context)
                        .copyWith(color: Colors.white,),
                  ),
                  const SizedBox(width: 15),
                  Image.asset(
                    Assets.imagesAkltyLogo,
                    height: 70,
                    width: 70,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}