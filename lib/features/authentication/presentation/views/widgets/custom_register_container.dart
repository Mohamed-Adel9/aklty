import 'package:aklty/core/utils/colors.dart';
import 'package:aklty/core/utils/styles.dart';
import 'package:aklty/core/widgets/tap_button_and_social_item.dart';
import 'package:aklty/features/authentication/presentation/views/login_mail_view.dart';
import 'package:aklty/generated/assets.dart';
import 'package:flutter/material.dart';

class CustomRegisterContainer extends StatefulWidget {
  const CustomRegisterContainer({
    super.key,
  });

  @override
  State<CustomRegisterContainer> createState() =>
      _CustomRegisterContainerState();
}

class _CustomRegisterContainerState extends State<CustomRegisterContainer> {
  bool isActive = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100.0),
      child: Align(
        alignment: Alignment.center,
        child: Container(
          width: MediaQuery.sizeOf(context).width * .8,
          height: MediaQuery.sizeOf(context).height * .55,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 1,
                blurRadius: 10,
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Expanded(
                    child: buildTabButton(
                      'سجل الان',
                      !isActive,
                      () {
                        Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const LoginMailView(),
                              ),
                            );
                      },
                    ),
                  ),
                  Expanded(
                    child: buildTabButton(
                      'مستخدم جديد',
                      isActive,
                      () {},
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'ادخل اسم المستخدم',
                  border: UnderlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'ادخل كلمه السر',
                  border: UnderlineInputBorder(),
                ),
                obscureText: true,
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors().primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    'سجل الان',
                    style: Styles.styleRegular18(context)
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'نسيت كلمه السر ؟',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Text('او',
                  style: Styles.styleRegular16(context)
                      .copyWith(color: Colors.grey)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildSocialIcon(Assets.imagesFacebook),
                  buildSocialIcon(Assets.imagesGoogle),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
