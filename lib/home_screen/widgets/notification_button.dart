import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team/navigation_screen/view/notification.dart';

class NotificationButton extends StatelessWidget {
  const NotificationButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          Get.to(() => const NotificationScreen());
        },
        icon: const Stack(
          alignment: Alignment.topRight,
          children: [
            Icon(Icons.notifications_active),
            CircleAvatar(
              radius: 6,
              backgroundColor: Colors.blue,
            ),
            CircleAvatar(
              radius: 5,
              backgroundColor: Colors.white,
              child: Text(
                '5',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 7,
                ),
              ),
            )
          ],
        ));
  }
}
