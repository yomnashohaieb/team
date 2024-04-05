import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:team/components/custom_appBar.dart';
import 'package:team/components/custom_list_tile.dart';
import 'package:team/possword_screen/view/password_screen.dart';
import 'package:team/settings_screen/widgets/bottom_sheet_builder.dart';

class SettingsScreenBody extends StatelessWidget {
  const SettingsScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const CustomAppBar(appBarTitle: "Settings"),
      const Gap(50),
      CustomListTile(onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (builder) => const PassWordManager()));
      }),
      const Gap(10),
      CustomListTile(onTap: () {
        showModalBottomSheet(
            context: context,
            builder: (builder) => const BottomSheetBuilder(),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16)));
      }),
    ]);
  }
}


