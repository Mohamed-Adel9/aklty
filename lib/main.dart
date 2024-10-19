import 'package:aklty/features/splash/presentation/views/spalsh_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Aklty());
}

class Aklty extends StatelessWidget {
  const Aklty({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aklty',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashView(),
    );
  }
}

