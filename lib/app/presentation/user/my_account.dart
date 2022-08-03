import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants.dart';
import 'edit_account.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kPrimaryColor,
        title: const Text(
          'My Profile',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
      body: Column(children: [
        const SizedBox(height: kDefaultPadding),
        Padding(
          padding: const EdgeInsets.only(right: kDefaultPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {
                  Get.to(const EditAccount());
                },
                child: const Icon(
                  Icons.edit,
                  size: 30,
                ),
              ),
            ],
          ),
        ),
        const CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage('assets/logos/logo.jpg'),
        ),
        const SizedBox(height: kDefaultPadding),
        const Text(
          'John Doe',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 15),
        const Text(
          '+880123456789',
          style: TextStyle(
            fontSize: kDefaultPadding - 5,
          ),
        ),
        const SizedBox(height: kDefaultPadding * 2),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Icon(
                    Icons.lock,
                    size: 25,
                  ),
                  const SizedBox(width: kDefaultPadding),
                  const Text(
                    'Change Password',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Icon(
                    Icons.call,
                    size: 25,
                  ),
                  const SizedBox(width: kDefaultPadding),
                  const Text(
                    'Contact Us',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Icon(
                    Icons.share,
                    size: 25,
                  ),
                  const SizedBox(width: kDefaultPadding),
                  const Text(
                    'Share',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Icon(
                    Icons.exit_to_app,
                    size: 25,
                  ),
                  const SizedBox(width: kDefaultPadding),
                  const Text(
                    'Logout',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
