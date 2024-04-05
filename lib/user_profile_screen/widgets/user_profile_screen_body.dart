import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:team/components/custom_appBar.dart';
import 'package:team/components/custom_material_button.dart';
import 'package:team/components/custom_text_field.dart';
import 'package:team/user_profile_screen/widgets/user_photo.dart';

class UserProfileScreenBody extends StatelessWidget {
  const UserProfileScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          CustomAppBar(appBarTitle: "your profile"),
          Gap(25),
          UserPhoto(),
          Gap(50),
          CustomTextField(),
          Gap(10),
          CustomTextField(),
          Gap(10),
          CustomTextField(),
          Gap(10),
          CustomTextField(),
          Gap(10),
          CustomTextField(),
          Gap(10),
          CustomTextField(),
          Gap(10),
          CustomTextField(),
          Gap(25),
          CustomButton(title: "Save"),
          Gap(25),
        ],
      ),
    );
  }
}
