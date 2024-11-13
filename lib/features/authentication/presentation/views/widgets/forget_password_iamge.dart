import 'package:aklty/generated/assets.dart';
import 'package:flutter/material.dart';

class ForgetPassImage extends StatelessWidget {
  const ForgetPassImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      margin: const EdgeInsetsDirectional.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xffD6DFFF),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Image.asset(Assets.imagesForgot),
      ),
    );
  }
}