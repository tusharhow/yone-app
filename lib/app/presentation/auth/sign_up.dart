import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants.dart';
import '../../controllers/country_code.dart';
import '../main/home_page.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kPrimaryColor,
        title: const Text(
          'Sign Up',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: GetBuilder<CountrySelector>(
            init: CountrySelector(),
            initState: (ff) {
              CountrySelector();
            },
            builder: (controller) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  children: [
                    const SizedBox(height: kDefaultPadding),
                    Image.asset(
                      'assets/logos/logo.jpg',
                      height: 120,
                    ),
                    const SizedBox(height: kDefaultPadding),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Full Name',
                        labelStyle: TextStyle(
                          fontSize: kDefaultPadding - 5,
                          fontWeight: FontWeight.bold,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: kDefaultPadding),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          fontSize: kDefaultPadding - 5,
                          fontWeight: FontWeight.bold,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: kDefaultPadding),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            controller.getCountryCode(context);
                          },
                          child: Container(
                            height: 55,
                            width: 105,
                            decoration: const BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomLeft: Radius.circular(30),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    controller.country?.flagEmoji ?? '',
                                  ),
                                  const SizedBox(width: kDefaultPadding - 15),
                                  const Text(
                                    '+',
                                  ),
                                  Text(
                                    controller.country?.phoneCode ?? '880',
                                  ),
                                  const SizedBox(width: kDefaultPadding + 20),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 55,
                            child: TextFormField(
                              keyboardType: TextInputType.phone,
                              decoration: const InputDecoration(
                                hintText: '1868985423',
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(30),
                                    bottomRight: Radius.circular(30),
                                  ),
                                  borderSide: BorderSide(
                                    color: Colors.blue,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(30),
                                    bottomRight: Radius.circular(30),
                                  ),
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                                enabled: true,
                              ),
                              style: const TextStyle(color: Colors.black),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: kDefaultPadding),
                    Row(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (value) {},
                        ),
                        const Expanded(
                          child: Text(
                            "By clicking Sign Up, you agree to our Terms of Service and Privacy Policy.",
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: kDefaultPadding),
                    Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: kPrimaryColor,
                      ),
                      child: FlatButton(
                        onPressed: () {
                          Get.to(() => HomePage());
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: kDefaultPadding,
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
