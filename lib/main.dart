// import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:team/cubits/cubit/change_mode_cubit.dart';
import 'package:team/cubits/cubit/cubit/drawer_controller_cubit.dart';
import 'package:team/cubits/cubit/cubit/recorder_cubit.dart';
import 'package:team/cubits/cubit/index_screen_cubit.dart';
import 'package:team/splash_screen/view/splash_screen.dart';

main() {
  runApp(
    // DevicePreview(
    // enabled: true,
    // builder: (context)
    //  =>
    const MyApp(),
    // ),
  );
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.blue,
    statusBarIconBrightness: Brightness.light,
    statusBarBrightness: Brightness.light,
    systemNavigationBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: Colors.white,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => ChangeModeCubit()),
          BlocProvider(create: (context) => IndexScreenCubit()),
          BlocProvider(create: (context) => RecorderCubit()),
          BlocProvider(create: (context) => DrawerControllerCubit()),
        ],
        child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(fontFamily: "ClashDisplay", useMaterial3: false),
          home: BlocBuilder<ChangeModeCubit, ChangeModeState>(
            builder: (context, state) {
              return const SplashScreen();
            },
          ),
        ));
  }
}
