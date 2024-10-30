import 'package:aklty/core/utils/colors.dart';
import 'package:aklty/features/authentication/presentation/views/widgets/login_home_second_section.dart';
import 'package:aklty/features/authentication/presentation/views/widgets/login_home_upper_section.dart';
import 'package:flutter/material.dart';

class LoginHomeViewBody extends StatelessWidget {
  const LoginHomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors().primaryColor,
      child: const Column(
        children: [
          LoginHomeUpperSection(),
          LoginHomeSecondSection(),
        ],
      ),
    );
  }
}


