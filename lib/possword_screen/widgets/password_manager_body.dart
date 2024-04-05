import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:team/components/custom_material_button.dart';
import 'package:team/components/custom_text_field.dart';

class PassWordManagerBody extends StatelessWidget {
  const PassWordManagerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomTextField(),
        const Gap(5),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
                onPressed: () {},
                child: const Text(
                  "Forget Password?",
                  style: TextStyle(color: Colors.blue),
                )),
          ],
        ),
        const Gap(10),
        const CustomTextField(),
        const Gap(10),
        const CustomTextField(),
        const Gap(50),
        const CustomButton(title: "Update"),
      ],
    );
  }
}
