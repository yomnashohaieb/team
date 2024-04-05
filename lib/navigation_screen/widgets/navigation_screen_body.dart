import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

class NavigationScreenBody extends StatelessWidget {
  const NavigationScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: 25,
        separatorBuilder: (context, index) => const Gap(10),
        itemBuilder: (context, index) => Dismissible(
          key: UniqueKey(),
          onDismissed: (direction) {
            Get.snackbar(
              "Notification Title ",
              "Notification Body",
              icon: const Icon(
                Icons.notification_important,
              ),
            );
          },
          child: Shimmer.fromColors(
            baseColor: Colors.grey.withOpacity(.25),
            highlightColor: Colors.white,
            period: const Duration(seconds: 1),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.grey.withOpacity(.5),
                ),
                const Gap(10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 25,
                      width: MediaQuery.sizeOf(context).width / 2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.withOpacity(.5)),
                    ),
                    const Gap(5),
                    Container(
                      height: 25,
                      width: MediaQuery.sizeOf(context).width / 1.5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.withOpacity(.5)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
