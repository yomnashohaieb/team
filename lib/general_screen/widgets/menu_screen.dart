import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:team/cubits/cubit/change_mode_cubit.dart';
import 'package:team/cubits/cubit/index_screen_cubit.dart';
import 'package:team/general_screen/widgets/app_features.dart';
import 'package:team/general_screen/widgets/user_account_header.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Menu"),
          centerTitle: true,
          leading: IconButton(
            onPressed: () => BlocProvider.of<IndexScreenCubit>(context)
                .drawerController
                .close!(),
            icon: const Icon(Icons.close),
          ),
          actions: [
            BlocBuilder<ChangeModeCubit, ChangeModeState>(
              builder: (context, state) {
                return IconButton(
                    tooltip:
                        BlocProvider.of<ChangeModeCubit>(context).isDarkMode
                            ? "Dark Mode"
                            : "Light Mode",
                    onPressed: () {
                      BlocProvider.of<ChangeModeCubit>(context)
                          .changeMode(Get.isDarkMode);
                    },
                    icon: Icon(
                        BlocProvider.of<ChangeModeCubit>(context).isDarkMode
                            ? Icons.dark_mode_sharp
                            : Icons.light_mode_outlined));
              },
            ),
          ],
        ),
        body: ListView(
          children: const [UserAccountsHeader(), AppFeatures()],
        ),
      ),
    );
  }
}
