import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yone_app/app/components/primary_button.dart';
import 'package:yone_app/app/presentation/auth/sign_up.dart';
import '../../constants.dart';
import '../auth/signin_screen.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kPrimaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Image.asset(
                'assets/logos/logo.jpg',
                height: 120,
              ),
            ),
            const SizedBox(height: kDefaultPadding * 7),
            Center(
              child: ReusablePrimaryButton(
                childText: 'Create an Account',
                textColor: Colors.white,
                buttonColor: kPrimaryColor,
                onPressed: () {
                  Get.to(const SignupScreen());
                },
              ),
            ),
            const SizedBox(height: kDefaultPadding),
            Center(
              child: ReusablePrimaryButton(
                childText: 'Log In',
                textColor: Colors.white,
                buttonColor: kPrimaryColor,
                onPressed: () {
                  Get.to(() => const SignInScreen());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
