import 'package:aklty/core/utils/colors.dart';
import 'package:aklty/core/utils/styles.dart';
import 'package:aklty/core/widgets/custom_button.dart';
import 'package:aklty/features/authentication/presentation/views/widgets/custom_divider.dart';
import 'package:aklty/features/authentication/presentation/views/widgets/login_home_upper_section.dart';
import 'package:flutter/material.dart';

class LoginHomeViewBody extends StatelessWidget {
  const LoginHomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors().primaryColor,
      child: Column(
        children: [
          const LoginHomeUpperSection(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const CustomButton(
                    bgColor: Colors.black,
                    textColor: Colors.white,
                    text: "سجل باستخدام الايميل", image: '',
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    child: CustomDivider(),
                  ),
                  const CustomButton(
                    bgColor: Colors.white,
                    textColor: Colors.black,
                    text: "سجل باستخدام الهاتف جوجل", image: '',
                  ),
                  const CustomButton(
                    bgColor: Colors.white,
                    textColor: Colors.black,
                    text: "سجل باستخدام الهاتف فيسبوك", image: '',
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(onPressed: () {}, child: Text("سجل الان", style: Styles.styleRegular14(context).copyWith(color: AppColors().grey),)),
                       Text("عندك اكونت بالفعل ؟",style: Styles.styleRegular14(context),),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
