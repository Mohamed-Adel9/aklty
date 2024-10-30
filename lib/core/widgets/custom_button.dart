import 'package:aklty/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.bgColor,
    required this.text,
    required this.textColor,
    required this.image,
    this.onPressed,
  });

  final Color bgColor;
  final String text;
  final Color textColor;
  final String image;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: bgColor,
      ),
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height * .07,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          elevation: 0,
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: Styles.styleRegular18(context).copyWith(
                color: textColor,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Image.asset(
              image,
              fit: BoxFit.cover,
              height: MediaQuery.sizeOf(context).height * .035,
            ),
          ],
        ),
      ),
    );
  }
}
