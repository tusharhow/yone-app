import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yone_app/app/constants.dart';
import 'package:yone_app/app/controllers/country_code.dart';

import '../../components/primary_button.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<CountrySelector>(
          init: CountrySelector(),
          initState: (ff) {
            CountrySelector();
          },
          builder: (controller) {
            return Column(
              children: [
                const SizedBox(height: kDefaultPadding * 5),
                Text(
                  'Content de vous revoir',
                  style: TextStyle(
                    fontSize: kDefaultPadding,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
                const SizedBox(height: kDefaultPadding * 3),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: kDefaultPadding - 5),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          controller.getCountryCode(context);
                        },
                        child: Container(
                          height: 55,
                          width: 105,
                          decoration: BoxDecoration(
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
                                Text(
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
                            decoration: InputDecoration(
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
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: kDefaultPadding),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: kDefaultPadding - 5),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.lock),
                      hintText: 'Code secret',
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      enabled: true,
                    ),
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(height: kDefaultPadding),
                Padding(
                  padding: const EdgeInsets.only(right: kDefaultPadding),
                  child: GestureDetector(
                    onTap: () {
                      print(controller.country?.phoneCode);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Mot de passe oublié ?',
                          style: TextStyle(
                            fontSize: kDefaultPadding - 5,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: kDefaultPadding * 3),
                Center(
                  child: ReusablePrimaryButton(
                    childText: 'Se Connector',
                    textColor: Colors.white,
                    buttonColor: Colors.red,
                    onPressed: () {},
                  ),
                ),
              ],
            );
          }),
    );
  }
}
