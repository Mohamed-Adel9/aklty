import 'package:aklty/features/authentication/presentation/views/widgets/custom_login_container.dart';
import 'package:aklty/features/authentication/presentation/views/widgets/login_logo_widget.dart';
import 'package:aklty/generated/assets.dart';
import 'package:flutter/material.dart';

class LoginMailViewBody extends StatelessWidget {
  const LoginMailViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const LoginLogoWidget(),
         CustomLoginContainer(),
        Align(
          alignment: Alignment.bottomRight,
          child: Image.asset(Assets.imagesVegitables),
        ),
      ],
    );
  }
}


