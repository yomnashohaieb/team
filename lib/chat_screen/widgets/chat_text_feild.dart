import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

import 'package:record/record.dart';

class ChatTextFelid extends StatefulWidget {
  const ChatTextFelid({
    super.key,
  });

  @override
  State<ChatTextFelid> createState() => _ChatTextFelidState();
}

class _ChatTextFelidState extends State<ChatTextFelid> {
  late AudioPlayer _audioPlayer;
  late Record _audioRecorder;
  String _audioPath = "";
  _welcom() async {
    AudioPlayer w = AudioPlayer();
    await w.play(AssetSource("images/welcom.wav"));
  }

  @override
  void initState() {
    _welcom();
    _audioPlayer = AudioPlayer();
    _audioRecorder = Record();
    super.initState();
  }

  String _generateRandomId() {
    const chars = 'abcdefghijklmnopqrstuvwxyz0123456789';
    final random = Random();
    return List.generate(
      10,
      (index) => chars[random.nextInt(chars.length)],
      growable: false,
    ).join();
  }

  Future<void> _startRecording() async {
    try {
      debugPrint(
          '=========>>>>>>>>>>> RECORDING!!!!!!!!!!!!!!! <<<<<<===========');

      String filePath = await getApplicationDocumentsDirectory()
          .then((value) => '${value.path}/${_generateRandomId()}.wav');
      await _audioRecorder.start(
        encoder: AudioEncoder.wav,
        path: filePath,
      );
    } catch (e) {
      debugPrint('ERROR WHILE RECORDING: $e');
    }
  }

  Future _stopRecording() async {
    String? path = await _audioRecorder.stop();
    setState(() {
      _audioPath = path!;
    });
  }

  Future _play() async {
    Source source = UrlSource(_audioPath);
    await _audioPlayer.play(
      source,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // TextFelidChat(),

        AvatarGlow(
          animate: true,
          glowRadiusFactor: .2,
          glowColor: Colors.blue,
          child: IconButton(
            onPressed: () async {},
            icon: const Icon(Icons.mic, color: Colors.blue),
          ),
        ),
        IconButton(onPressed: _startRecording, icon: Icon(Icons.mic)),
        IconButton(onPressed: _stopRecording, icon: Icon(Icons.stop)),
        IconButton(onPressed: _play, icon: Icon(Icons.play_arrow)),
        // NewWidget()
      ],
    );
  }
}

class TextFelidChat extends StatelessWidget {
  const TextFelidChat({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          hintText: 'Start new chat',
          prefixIcon: const Icon(Icons.keyboard_rounded),
          suffixIcon: Padding(
            padding: const EdgeInsets.all(12.0),
            child: AvatarGlow(
                animate: true,
                glowRadiusFactor: .2,
                glowColor: Colors.blue,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.mic, color: Colors.blue))),
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            borderSide: BorderSide(color: Colors.blue),
          ),
        ),
      ),
    );
  }
}

class NewWidget extends StatefulWidget {
  const NewWidget({
    super.key,
  });

  @override
  State<NewWidget> createState() => _NewWidgetState();
}

class _NewWidgetState extends State<NewWidget> {
  bool isMic = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.delete, color: Colors.red),
      onPressed: () {},
    );
  }
}
