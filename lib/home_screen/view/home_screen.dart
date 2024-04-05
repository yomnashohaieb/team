import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:team/cubits/cubit/index_screen_cubit.dart';
import 'package:team/home_screen/widgets/home_screen_body.dart';
import 'package:team/home_screen/widgets/notification_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
        (_) => ShowCaseWidget.of(context).startShowCase([_one, _two, _three]));
  }

  GlobalKey _one = GlobalKey();
  GlobalKey _two = GlobalKey();
  GlobalKey _three = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Showcase(
            key: _one,
            title: "Home",
            description: "This is the home screen",
            child: Image.asset(
              "assets/images/technology_12751677.png",
              width: 30,
              height: 30,
            )),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            BlocProvider.of<IndexScreenCubit>(context).drawer();
          },
          icon: Showcase(
              title: "Menu",
              description: "This is the menu screen",
              key: _two,
              child: const Icon(Icons.menu)),
        ),
        leadingWidth: 75,
        actions: [
          Showcase(
              title: "Notification",
              description: "This is the notification screen",
              key: _three,
              child: const NotificationButton()),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: HomeScreenBody(),
        ),
      ),
    );
  }
}
