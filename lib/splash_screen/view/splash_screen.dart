import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:team/on_boarding/view/on_boarding.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blue,
      body: SplashScreenBody(),
    );
  }
}

class SplashScreenBody extends StatelessWidget {
  const SplashScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.delayed(
          const Duration(seconds: 2),
        ),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: Lottie.asset(
                "assets/images/aQxoeWIik3.json",
                width: MediaQuery.sizeOf(context).width * 0.5,
              ),
            );
          } else {
            return const OnBoardingScreen();
          }
        });
  }
}
