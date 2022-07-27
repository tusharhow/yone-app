import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yone_app/app/components/primary_button.dart';

import '../../constants.dart';
import '../auth/signin_screen.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Image.network(
              'https://picsum.photos/id/1/200/300',
              height: 120,
            ),
          ),
          const SizedBox(height: kDefaultPadding * 7),
          Center(
            child: ReusablePrimaryButton(
              childText: 'Create an Account',
              textColor: Colors.white,
              buttonColor: Colors.red,
              onPressed: () {},
            ),
          ),
          const SizedBox(height: kDefaultPadding),
          Center(
            child: ReusablePrimaryButton(
              childText: 'Log In',
              textColor: Colors.white,
              buttonColor: Colors.red,
              onPressed: () {
                Get.to(() => const SignInScreen());
              },
            ),
          ),
        ],
      ),
    );
  }
}
