import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:team/components/custom_material_button.dart';
import 'package:team/diagnosi_screen/view/diagnosis.dart';
import 'package:team/forget_password_screen/view/forget_password_screen.dart';
import 'package:team/general_screen/view/general_screen.dart';
import 'package:team/sign_up_screen/view/sign_up_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        centerTitle: true,
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: LoginScreenBody(),
        ),
      ),
    );
  }
}

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset("assets/images/Tablet login-cuate (1).png"),
          const Gap(25),
          const Text(
            "Hello Again!",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            "Welcome Back You’ve Been Missed!",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          const Gap(25),
          const NewWidget1(),
          const Gap(15),
          const NewWidget1(),
          const Gap(5),
          Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () {
                    Get.to(() => const ForgetPasswordScreen());
                  },
                  child: const Text("Forget Password?"))),
          CustomButton(
              title: "Login",
              onPressed: () {
                Get.offAll(() => const GeneralScreen());
              }),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account?",
                style: TextStyle(color: Colors.grey),
              ),
              TextButton(
                  onPressed: () {
                    Get.to(() => const SignUpScreen());
                  },
                  child: Text("Sign up"))
            ],
          )
        ],
      ),
    );
  }
}
