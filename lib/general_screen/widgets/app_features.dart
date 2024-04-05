import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:team/chat_screen/view/chat_screen.dart';
import 'package:team/cubits/cubit/change_mode_cubit.dart';
import 'package:team/cubits/cubit/index_screen_cubit.dart';
import 'package:team/diagnosi_screen/view/diagnosis.dart';
import 'package:team/help_screen/view/help_screen.dart';
import 'package:team/info/view/info.dart';
import 'package:team/login_screen/view/login_screen.dart';
import 'package:team/navigation_screen/view/notification.dart';
import 'package:team/profile_screen/view/profile_screen.dart';

class AppFeatures extends StatelessWidget {
  const AppFeatures({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChangeModeCubit, ChangeModeState>(
      builder: (context, state) {
        return Column(
          children: [
            ListTile(
              onTap: () => BlocProvider.of<IndexScreenCubit>(context)
                  .drawerController
                  .close!(),
              title: const Text('Home',
                  style: TextStyle(color: Colors.grey
                      // fontWeight: FontWeight.bold,
                      )),
              leading: const Icon(
                Icons.home_outlined,
                // color: BlocProvider.of<ChangeModeCubit>(context).isDarkMode
                //     ? Colors.white
                //     : Colors.black,
              ),
              trailing: const Icon(Icons.chevron_right),
            ),
            ExpansionTile(
              title: const Text('Diabetes Prediction',
                  style: TextStyle(color: Colors.grey
                      // fontWeight: FontWeight.bold,
                      )),
              leading: const Icon(
                Icons.medical_services_outlined,
                color: Colors.grey,
              ),
              children: [
                ListTile(
                  onTap: () => Get.to(() => const DiagnosisScreen()),
                  title: const Text('Diagnosis',
                      style: TextStyle(color: Colors.grey
                          // fontWeight: FontWeight.bold,
                          )),
                  leading: const Icon(
                    Icons.medical_services_outlined,
                    color: Colors.grey,
                  ),
                  trailing: const Icon(Icons.chevron_right),
                ),
                ListTile(
                  onTap: () => Get.to(() => const DiagnosisScreen()),
                  title: const Text('Parkinson',
                      style: TextStyle(color: Colors.grey
                          // fontWeight: FontWeight.bold,
                          )),
                  leading: const Icon(
                    Icons.medical_services_outlined,
                    color: Colors.grey,
                  ),
                  trailing: const Icon(Icons.chevron_right),
                ),
                ListTile(
                  onTap: () => Get.to(() => const DiagnosisScreen()),
                  title: const Text('Breast Cancer',
                      style: TextStyle(color: Colors.grey
                          // fontWeight: FontWeight.bold,
                          )),
                  leading: const Icon(
                    Icons.medical_services_outlined,
                    color: Colors.grey,
                  ),
                  trailing: const Icon(Icons.chevron_right),
                ),
                ListTile(
                  onTap: () => Get.to(() => const DiagnosisScreen()),
                  title: const Text('Heart Disease',
                      style: TextStyle(color: Colors.grey
                          // fontWeight: FontWeight.bold,
                          )),
                  leading: const Icon(
                    Icons.medical_services_outlined,
                    color: Colors.grey,
                  ),
                  trailing: const Icon(Icons.chevron_right),
                ),
              ],
            ),
            ListTile(
              onTap: () => Get.to(() => const NotificationScreen()),
              title: const Text('Notifications',
                  style: TextStyle(color: Colors.grey
                      // fontWeight: FontWeight.bold,
                      )),
              leading: const Icon(
                Icons.notifications_active_outlined,
                // color: Colors.amber,
              ),
              trailing: const Icon(Icons.chevron_right),
            ),
            ListTile(
              onTap: () => Get.to(() => const ChatScreen()),
              title: const Text('Chat',
                  style: TextStyle(color: Colors.grey
                      // fontWeight: FontWeight.bold,
                      )),
              leading: const Icon(
                Icons.chat,
                // color: Colors.tealAccent
              ),
              trailing: const Icon(Icons.chevron_right),
            ),
            ListTile(
              onTap: () => Get.to(() => const ProfileScreen()),
              title: const Text('Profile',
                  style: TextStyle(color: Colors.grey
                      // fontWeight: FontWeight.bold,
                      )),
              leading: const Icon(
                Icons.person_2_outlined,
                // color: Colors.green,
              ),
              trailing: const Icon(Icons.chevron_right),
            ),
            ListTile(
              onTap: () => Get.to(() => const Info()),
              title: const Text('Settings',
                  style: TextStyle(color: Colors.grey
                      // fontWeight: FontWeight.bold,
                      )),
              leading: const Icon(
                Icons.settings,
                color: Colors.grey,
              ),
              trailing: const Icon(Icons.chevron_right),
            ),
            ListTile(
              onTap: () => Get.to(() => const Info()),
              title: const Text('About',
                  style: TextStyle(color: Colors.grey
                      // fontWeight: FontWeight.bold,
                      )),
              leading: const Icon(
                Icons.info_outline_rounded,
                // color: Colors.purple,
              ),
              trailing: const Icon(Icons.chevron_right),
            ),
            ListTile(
              onTap: () => Get.to(() => const HelpScreen()),
              title: const Text('Help',
                  style: TextStyle(color: Colors.grey
                      // fontWeight: FontWeight.bold,
                      )),
              leading: const Icon(
                Icons.help_outline_rounded,
                // color: Colors.yellow,
              ),
              trailing: const Icon(Icons.chevron_right),
            ),
            ListTile(
              onTap: () => showCupertinoDialog(
                  context: context,
                  builder: (builder) => CupertinoAlertDialog(
                          title: const Text('Logout'),
                          content:
                              const Text('Are you sure you want to logout'),
                          actions: [
                            CupertinoDialogAction(
                              isDestructiveAction: true,
                              child: const Text('Cancel'),
                              onPressed: () {
                                Get.back();
                              },
                            ),
                            CupertinoDialogAction(
                              child: const Text('Logout'),
                              onPressed: () {
                                Get.offAll(() => const LoginScreen());
                              },
                            )
                          ])),
              title: const Text('Logout',
                  style: TextStyle(color: Colors.red
                      // fontWeight: FontWeight.bold,
                      )),
              leading: const Icon(
                Icons.logout,
                color: Colors.red,
              ),
              trailing: const Icon(Icons.chevron_right, color: Colors.red),
            )
          ],
        );
      },
    );
  }
}
