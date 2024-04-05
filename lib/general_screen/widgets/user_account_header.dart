import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:team/cubits/cubit/change_mode_cubit.dart';

class UserAccountsHeader extends StatelessWidget {
  const UserAccountsHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChangeModeCubit, ChangeModeState>(
      builder: (context, state) {
        return UserAccountsDrawerHeader(
          decoration: const BoxDecoration(),
          accountName: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.person,
                color: BlocProvider.of<ChangeModeCubit>(context).isDarkMode
                    ? Colors.white
                    : Colors.black,
                size: 15,
              ),
              const Gap(5),
              Text(
                "Mohamed Ghaly",
                style: TextStyle(
                    // fontWeight: FontWeight.bold,
                    color: BlocProvider.of<ChangeModeCubit>(context).isDarkMode
                        ? Colors.white
                        : Colors.black),
              ),
            ],
          ),
          accountEmail: Row(
            children: [
              Icon(
                Icons.email,
                color: BlocProvider.of<ChangeModeCubit>(context).isDarkMode
                    ? Colors.white
                    : Colors.black,
                size: 15,
              ),
              const Gap(5),
              Text(
                "MohamedGhaly@gmail.com",
                style: TextStyle(
                    // fontWeight: FontWeight.bold,
                    color: BlocProvider.of<ChangeModeCubit>(context).isDarkMode
                        ? Colors.white
                        : Colors.black),
              ),
            ],
          ),
          currentAccountPicture: const CircleAvatar(
            backgroundImage: NetworkImage(
              'https://scontent.fcai21-2.fna.fbcdn.net/v/t1.6435-1/187554048_3988873787894595_3323415653101838635_n.jpg?stp=dst-jpg_p320x320&_nc_cat=101&ccb=1-7&_nc_sid=5f2048&_nc_ohc=t1TI_ScUT3wAX-Usi64&_nc_ht=scontent.fcai21-2.fna&oh=00_AfBWgvI5z_abYFrCh1jL8017NePku_A3BLa-ylGisCo5Xg&oe=661682C0',
            ),
          ),
        );
      },
    );
  }
}
