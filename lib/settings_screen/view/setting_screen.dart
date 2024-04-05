import 'package:flutter/material.dart';
import 'package:team/settings_screen/widgets/settings_screen_body.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: SettingsScreenBody(),
        ),
      ),
    );
  }
}
