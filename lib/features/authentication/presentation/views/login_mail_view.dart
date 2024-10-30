import 'package:aklty/features/authentication/presentation/views/widgets/login_mail_view_body.dart';
import 'package:flutter/material.dart';

class LoginMailView extends StatelessWidget {
  const LoginMailView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoginMailViewBody(),
    );
  }
}
