import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:qr_flutter/qr_flutter.dart';

class FollowUs extends StatelessWidget {
  const FollowUs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset("assets/images/QR Code-amico (1).png"),
          const Text("Scan Our QR Code!", style: TextStyle(fontSize: 30)),
          const Text("Follow us on Website", style: TextStyle(fontSize: 16)),
          const Gap(15),
          QrImageView(
              data: 'https://www.facebook.com/mohamed.ghaly74',
              version: QrVersions.auto,
              size: MediaQuery.sizeOf(context).width * .5),
        ],
      ),
    );
  }
}
