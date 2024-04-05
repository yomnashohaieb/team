import 'package:flutter/material.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:team/cubits/cubit/change_mode_cubit.dart';
import 'package:team/cubits/cubit/index_screen_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team/general_screen/widgets/menu_screen.dart';
import 'package:team/home_screen/view/home_screen.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class GeneralScreen extends StatefulWidget {
  const GeneralScreen({super.key});

  @override
  State<GeneralScreen> createState() => _GeneralScreenState();
}

class _GeneralScreenState extends State<GeneralScreen> {
  final drawerController = ZoomDrawerController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocConsumer<ChangeModeCubit, ChangeModeState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return ZoomDrawer(
          controller:
              BlocProvider.of<IndexScreenCubit>(context).drawerController,
          menuScreen: const MenuScreen(),
          mainScreen: ShowCaseWidget(
              autoPlay: true,
              autoPlayDelay: const Duration(seconds: 3),
              
              builder: Builder(builder: (context) =>
            const HomeScreen()),
          ),
          borderRadius: 24.0,
          showShadow: true,
          openCurve: Curves.fastOutSlowIn,
          angle: 0.0,
          style: DrawerStyle.defaultStyle,
          slideWidth: MediaQuery.of(context).size.width - 60.0,
        );
      },
    ));
  }
}
