import 'package:flutter/material.dart';

import '../../constants.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kPrimaryColor,
        title: const Text(
          'Transaction',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: kDefaultPadding),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'A 64564654',
                      style: TextStyle(
                        fontSize: kDefaultPadding - 5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '312 fca',
                      style: TextStyle(
                        fontSize: kDefaultPadding - 5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Image.asset(
                      'assets/logos/orange.png',
                      height: 40,
                      width: 40,
                    ),
                    const SizedBox(width: 10),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                      size: 15,
                    ),
                    const SizedBox(width: 10),
                    Image.asset(
                      'assets/logos/orange.png',
                      height: 40,
                      width: 40,
                    ),
                    Spacer(),
                    Text(
                      '12-05-2020',
                      style: TextStyle(
                        fontSize: kDefaultPadding - 5,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: kDefaultPadding),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'A 64564654',
                      style: TextStyle(
                        fontSize: kDefaultPadding - 5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '312 fca',
                      style: TextStyle(
                        fontSize: kDefaultPadding - 5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Image.asset(
                      'assets/logos/orange.png',
                      height: 40,
                      width: 40,
                    ),
                    const SizedBox(width: 10),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                      size: 15,
                    ),
                    const SizedBox(width: 10),
                    Image.asset(
                      'assets/logos/orange.png',
                      height: 40,
                      width: 40,
                    ),
                    Spacer(),
                    Text(
                      '12-05-2020',
                      style: TextStyle(
                        fontSize: kDefaultPadding - 5,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: kDefaultPadding),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'A 64564654',
                      style: TextStyle(
                        fontSize: kDefaultPadding - 5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '312 fca',
                      style: TextStyle(
                        fontSize: kDefaultPadding - 5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Image.asset(
                      'assets/logos/orange.png',
                      height: 40,
                      width: 40,
                    ),
                    const SizedBox(width: 10),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                      size: 15,
                    ),
                    const SizedBox(width: 10),
                    Image.asset(
                      'assets/logos/orange.png',
                      height: 40,
                      width: 40,
                    ),
                    Spacer(),
                    Text(
                      '12-05-2020',
                      style: TextStyle(
                        fontSize: kDefaultPadding - 5,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
