import 'package:aklty/features/authentication/presentation/views/widgets/forget_password_view_body.dart';
import 'package:flutter/material.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body:  ForgetPasswordViewBody(),
    );
  }
}
