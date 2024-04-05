import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:team/components/custom_material_button.dart';
import 'package:team/diagnosi_screen/view/diagnosis.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
        centerTitle: true,
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: SignUpScreenBody(),
        ),
      ),
    );
  }
}

class SignUpScreenBody extends StatelessWidget {
  const SignUpScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset("assets/images/Sign up-cuate (1).png"),
          const Gap(25),
          const Text(
            "Create Account",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            "Let’s Create Account Together",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          const Gap(25),
          const NewWidget1(),
          const Gap(15),
          const NewWidget1(),
          const Gap(15),
          const NewWidget1(),
          Row(
            children: [
              Checkbox(value: true, onChanged: (value) {}),
              const Text("I agree to the all statement in terms of service. ")
            ],
          ),
          const Gap(25),
          CustomButton(
              title: "Sign Up",
              onPressed: () {
                // Get.offAll(() => const GeneralScreen());
              }),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "ALREADY HAVE AN ACCOUNT?",
                style: TextStyle(color: Colors.grey),
              ),
              TextButton(
                  onPressed: () {
                    // Get.offAll(() => const diagnosisScreen());
                  },
                  child: const Text("Sign In"))
            ],
          )
        ],
      ),
    );
  }
}
