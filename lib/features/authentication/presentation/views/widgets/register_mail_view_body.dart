import 'package:aklty/features/authentication/presentation/views/widgets/custom_login_container.dart';
import 'package:aklty/features/authentication/presentation/views/widgets/custom_register_container.dart';
import 'package:aklty/features/authentication/presentation/views/widgets/login_logo_widget.dart';
import 'package:aklty/generated/assets.dart';
import 'package:flutter/material.dart';

class RegisterMailViewBody extends StatelessWidget {
  const RegisterMailViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const LoginLogoWidget(),
        const CustomRegisterContainer(),
        Align(
          alignment: Alignment.bottomRight,
          child: Image.asset(Assets.imagesVegitables),
        ),
      ],
    );
  }
}


