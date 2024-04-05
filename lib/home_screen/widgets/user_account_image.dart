import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team/cubits/cubit/index_screen_cubit.dart';

class UserAccountImage extends StatelessWidget {
  const UserAccountImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        BlocProvider.of<IndexScreenCubit>(context).drawer();
      },
      child: const Stack(
        alignment: Alignment.center,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.white,
          ),
          Stack(
            children: [
              CircleAvatar(
                radius: 23,
                backgroundImage: NetworkImage(
                  'https://scontent.fcai21-2.fna.fbcdn.net/v/t1.6435-1/187554048_3988873787894595_3323415653101838635_n.jpg?stp=dst-jpg_p320x320&_nc_cat=101&ccb=1-7&_nc_sid=5f2048&_nc_ohc=t1TI_ScUT3wAX-Usi64&_nc_ht=scontent.fcai21-2.fna&oh=00_AfBWgvI5z_abYFrCh1jL8017NePku_A3BLa-ylGisCo5Xg&oe=661682C0',
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.menu,
                    color: Colors.black,
                    size: 15,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
    // };
    // );
  }
}
