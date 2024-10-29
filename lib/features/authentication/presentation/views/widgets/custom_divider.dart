import 'package:aklty/core/utils/colors.dart';
import 'package:aklty/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: MediaQuery.sizeOf(context).width * .25,
          height: 1,
          color: AppColors().grey,
        ),
        Text(
          "او بالتواصل الاجتماعي",
          style: Styles.styleRegular16(context)
              .copyWith(color: Colors.white),
        ),
        Container(
          width: MediaQuery.sizeOf(context).width * .25,
          height: 1,
          color: AppColors().grey,
        ),
      ],
    );
  }
}