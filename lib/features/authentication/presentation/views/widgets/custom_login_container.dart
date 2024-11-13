import 'package:aklty/core/utils/colors.dart';
import 'package:aklty/core/utils/styles.dart';
import 'package:aklty/core/widgets/custom_text_field.dart';
import 'package:aklty/core/widgets/tap_button_and_social_item.dart';
import 'package:aklty/features/authentication/presentation/views/forget_password_view.dart';
import 'package:aklty/features/authentication/presentation/views/register_mail_view.dart';
import 'package:aklty/features/home/presentation/views/home_view.dart';
import 'package:aklty/generated/assets.dart';
import 'package:flutter/material.dart';

class CustomLoginContainer extends StatelessWidget {
  CustomLoginContainer({
    super.key,
  });

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

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
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: buildTabButton(
                            'سجل الان',
                            true,
                            () {},
                          ),
                        ),
                        Expanded(
                          child: buildTabButton(
                            'مستخدم جديد',
                            false,
                            () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const RegisterMailView(),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomTextField(
                      controller: emailController,
                      text: "ادخل اسم المستخدم",
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextField(
                      controller: passwordController,
                      text: 'ادخل كلمه السر',
                      obscureText: true,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            login(context);
                          }
                          return null;
                        },
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
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const ForgetPasswordView(),
                            ),
                          );
                        },
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
            ],
          ),
        ),
      ),
    );
  }

  Future<dynamic> login(BuildContext context) {
    return Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) {
          return const HomeView();
        },
      ),
    );
  }
}
