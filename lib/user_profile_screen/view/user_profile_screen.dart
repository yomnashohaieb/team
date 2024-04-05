import 'package:flutter/material.dart';
import 'package:team/user_profile_screen/widgets/user_profile_screen_body.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: UserProfileScreenBody(),
        ),
      ),
    );
  }
}
