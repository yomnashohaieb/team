import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:team/components/custom_material_button.dart';
import 'package:team/help_screen/view/help_screen.dart';
import 'package:team/settings_screen/view/setting_screen.dart';
import 'package:team/user_profile_screen/view/user_profile_screen.dart';
import 'package:team/components/custom_list_tile.dart';

class ProfileScreenBody extends StatelessWidget {
  const ProfileScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          // const CustomAppBar(
          //   appBarTitle: "Profile",
          // ),
          const Gap(50),
          const Hero(
            tag: "userPhoto",
            child: CircleAvatar(
              radius: 75,
              backgroundImage: NetworkImage('https://picsum.photos/200'),
            ),
          ),
          const Gap(20),
          const Text(
            'Flutter Developer',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'Flutter_Developer@gamil.com',
          ),
          const Gap(50),
          CustomListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (builder) => const UserProfileScreen()),
              );
            },
          ),
          const Gap(10),
          CustomListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (builder) => const SettingScreen()),
              );
            },
          ),
          const Gap(10),
          CustomListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (builder) => const HelpScreen(),
                  ));
            },
          ),
          const Gap(50),
          const CustomButton(
            title: 'Update Profile',
          )
        ],
      ),
    );
  }
}
