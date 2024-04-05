import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:team/components/custom_material_button.dart';
import 'package:team/diagnosi_screen/view/diagnosis.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Forget Password"),
        centerTitle: true,
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: ForgetPasswordScreenBody(),
        ),
      ),
    );
  }
}

class ForgetPasswordScreenBody extends StatelessWidget {
  const ForgetPasswordScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset("assets/images/Forgot password-cuate.png"),
          const Gap(25),
          const Text(
            "Reset Password",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Gap(5),
          const Text(
            "Please Enter Your Email Address To Reset Your Password",
            style: TextStyle(
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
          const Gap(25),
          const NewWidget1(),
          const Gap(25),
          CustomButton(title: "Reset Password", onPressed: () {}),
        ],
      ),
    );
  }
}
