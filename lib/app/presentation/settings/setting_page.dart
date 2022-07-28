import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yone_app/app/presentation/settings/about_us.dart';
import 'package:yone_app/app/presentation/settings/privacy_policy.dart';

import '../../constants.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.red,
        title: Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding - 5),
        child: Column(
          children: [
            const SizedBox(height: kDefaultPadding - 10),
            Card(
              child: ListTile(
                onTap: () {
                  Get.to(() => const AboutUsScreen());
                },
                leading: Icon(Icons.fmd_bad_outlined),
                title: Text('About Us'),
              ),
            ),
            const SizedBox(height: kDefaultPadding - 15),
            Card(
              child: ListTile(
                onTap: () {},
                leading: Icon(Icons.three_mp_sharp),
                title: Text('Terms & Conditions'),
              ),
            ),
            const SizedBox(height: kDefaultPadding - 15),
            Card(
              child: ListTile(
                onTap: () {
                  Get.to(() => const PrivacyPolicy());
                },
                leading: Icon(Icons.privacy_tip_outlined),
                title: Text('Privacy Policy'),
              ),
            ),
            const SizedBox(height: kDefaultPadding - 15),
            Card(
              child: ListTile(
                onTap: () {},
                leading: Icon(Icons.contact_mail),
                title: Text('Contact Us'),
              ),
            ),
            const SizedBox(height: kDefaultPadding - 15),
          ],
        ),
      ),
    );
  }
}
