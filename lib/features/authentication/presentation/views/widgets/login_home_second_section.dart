import 'package:aklty/core/utils/colors.dart';
import 'package:aklty/core/utils/styles.dart';
import 'package:aklty/core/widgets/custom_button.dart';
import 'package:aklty/features/authentication/presentation/views/login_mail_view.dart';
import 'package:aklty/features/authentication/presentation/views/widgets/custom_divider.dart';
import 'package:aklty/generated/assets.dart';
import 'package:flutter/material.dart';

class LoginHomeSecondSection extends StatelessWidget {
  const LoginHomeSecondSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomButton(
              bgColor: Colors.black,
              textColor: Colors.white,
              text: "سجل باستخدام الايميل",
              image: Assets.imagesMail,
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) {
                      return const LoginMailView();
                    },
                  ),
                );
              },
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: CustomDivider(),
            ),
            const CustomButton(
              bgColor: Colors.white,
              textColor: Colors.black,
              text: "سجل باستخدام جوجل",
              image: Assets.imagesGoogle,
            ),
            const CustomButton(
              bgColor: Colors.white,
              textColor: Colors.black,
              text: "سجل باستخدام فيسبوك",
              image: Assets.imagesFacebook,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "سجل الان",
                      style: Styles.styleRegular14(context)
                          .copyWith(color: AppColors().grey),
                    )),
                Text(
                  "عندك اكونت بالفعل ؟",
                  style: Styles.styleRegular14(context),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
