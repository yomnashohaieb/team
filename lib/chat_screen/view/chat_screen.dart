import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:team/chat_screen/widgets/chat_screen_body.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
            future: Future.delayed(const Duration(seconds: 3)),
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) =>
                snapshot.connectionState == ConnectionState.waiting
                    ? Center(
                        child: Lottie.asset(
                            "assets/images/Animation - 1709462694215.json"),
                      )
                    : const ChatScreenBody()),
      ),
    );
  }
}
