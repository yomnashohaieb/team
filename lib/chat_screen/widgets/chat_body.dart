import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:flutter_tts/flutter_tts.dart';

class ChatBody extends StatelessWidget {
  const ChatBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: ChatContent(),
    );
  }
}

class ChatContent extends StatefulWidget {
  const ChatContent({
    super.key,
  });

  @override
  State<ChatContent> createState() => _ChatContentState();
}

class _ChatContentState extends State<ChatContent> {
  final FlutterTts flutterTts = FlutterTts();



  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        child: Column(
          children: [
            const User(),
            const Gap(10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("assets/images/icons8-bot-100.png"),
                  ),
                ),
                const Gap(5),
                CupertinoContextMenu(
                  actions: [
                    CupertinoContextMenuAction(
                        onPressed: () {},
                        trailingIcon: CupertinoIcons.doc,
                        child: const Text("Copy")),
                    CupertinoContextMenuAction(
                        onPressed: () {},
                        trailingIcon: CupertinoIcons.delete,
                        isDestructiveAction: true,
                        child: const Text("Delete")),
                    CupertinoContextMenuAction(
                        onPressed: () {},
                        trailingIcon: CupertinoIcons.share,
                        child: const Text("Share")),
              
                  ],
                  child: Container(
                    width: MediaQuery.sizeOf(context).width / 1.5,
                    height: MediaQuery.sizeOf(context).height / 4,
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                      color: Colors.blue,
                    ),
                    child: const Text(
                      " Mohamed lorem ipsum dolor sit amet consectetur adipisicing elit. Minima, voluptates"
                      "Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima, voluptates"
                      "Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima, voluptates."
                      "Lorem ipsum dolor sit amet consectetur adipisicing elit.",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            const Gap(10),
            const User(),
            const Gap(10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("assets/images/icons8-bot-100.png"),
                  ),
                ),
                const Gap(5),
                Container(
                    width: MediaQuery.sizeOf(context).width / 1.5,
                    height: MediaQuery.sizeOf(context).height / 4,
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                      color: Colors.blue,
                    ),
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                          "lorem ipsum dolor sit amet consectetur adipisicing elit. Minima, voluptates"
                          "Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima, voluptates"
                          "Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima, voluptates."
                          "Lorem ipsum dolor sit amet consectetur adipisicing elit.",
                          speed: const Duration(milliseconds: 150),
                          textStyle: const TextStyle(color: Colors.white),
                        )
                      ],
                      isRepeatingAnimation: false,
                      displayFullTextOnTap: true,
                      stopPauseOnTap: false,
                      repeatForever: false,
                    )),
              ],
            ),
            const Gap(10),
            const User(),
            const Gap(10),
            Container(
              padding: EdgeInsets.all(5),
              alignment: Alignment.centerLeft,
              child: const CircularProgressIndicator(
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class User extends StatelessWidget {
  const User({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width / 1.5,
            height: MediaQuery.sizeOf(context).height * .1,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
              color: Colors.grey.withOpacity(.25),
            ),
            child: const Text(
                "lorem ipsum dolor sit amet consectetur adipisicing elit. Minima, voluptates"),
          ),
          const Gap(5),
          
          const CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(
              'https://scontent.fcai21-2.fna.fbcdn.net/v/t1.6435-1/187554048_3988873787894595_3323415653101838635_n.jpg?stp=dst-jpg_p320x320&_nc_cat=101&ccb=1-7&_nc_sid=5f2048&_nc_ohc=t1TI_ScUT3wAX-Usi64&_nc_ht=scontent.fcai21-2.fna&oh=00_AfBWgvI5z_abYFrCh1jL8017NePku_A3BLa-ylGisCo5Xg&oe=661682C0',
            ),
          ),
        ]);
  }
}
