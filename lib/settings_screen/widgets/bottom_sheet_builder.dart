import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:team/components/custom_material_button.dart';

class BottomSheetBuilder extends StatelessWidget {
  const BottomSheetBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height / 4,
      width: MediaQuery.sizeOf(context).width,
      padding: const EdgeInsets.all(16),
      child: const Column(children: [
        Text(
          "Flutter Team",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text("Flutter Team Members"),
        Spacer(),
        Row(children: [
          Expanded(child: CustomButton(title: "cancel")),
          Gap(10),
          Expanded(child: CustomButton(title: "Yes,Iam sure")),
        ]),
        Gap(10),
      ]),
    );
  }
}
