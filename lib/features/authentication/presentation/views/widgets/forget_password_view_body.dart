import 'package:aklty/core/utils/colors.dart';
import 'package:aklty/core/utils/styles.dart';
import 'package:aklty/core/widgets/custom_text_field.dart';
import 'package:aklty/features/authentication/presentation/views/widgets/forget_password_iamge.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  ForgetPasswordViewBody({super.key});

  static final PageController controller = PageController();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SmoothPageIndicator(
            controller: controller,
            count: 3,
            effect: const WormEffect(),
          ),
          const ForgetPassImage(),
          Text(
            "نسيت كلمه السر",
            style: Styles.styleBold25(context).copyWith(
              color: Colors.deepPurple,
            ),
          ),
          Text("من فضلك قم بادخال البريد الاكتروني المستخدم",
              style: Styles.styleRegular16(context)),
          CustomTextField(
            controller: emailController,
            text: "البريد الالكتروني",
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: AppColors().primaryColor,
            ),
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height * .07,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors().primaryColor,
                elevation: 0,
              ),
              onPressed: () {},
              child: Text("تابع", style: Styles.styleRegular18(context)),
            ),
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height*.2,)
        ],
      ),
    );
  }
}


