import 'package:flutter/material.dart';
import 'package:team/possword_screen/widgets/password_manager_body.dart';

class PassWordManager extends StatelessWidget {
  const PassWordManager({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Password Manager"),
          centerTitle: true,
        ),
        body: const SafeArea(
            child: Padding(
          padding: EdgeInsets.all(16.0),
          child: PassWordManagerBody(),
        )));
  }
}
