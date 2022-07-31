import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yone_app/app/components/primary_button.dart';

import '../../constants.dart';
import '../settings/setting_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List imgList = [
      "https://images.unsplash.com/photo-1614851099175-e5b30eb6f696?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8YmFubmVyfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
      "https://images.unsplash.com/photo-1614851099175-e5b30eb6f696?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8YmFubmVyfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
      "https://images.unsplash.com/photo-1614851099175-e5b30eb6f696?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8YmFubmVyfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
      "https://images.unsplash.com/photo-1614851099175-e5b30eb6f696?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8YmFubmVyfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
    ];
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.red,
          leading: Image.asset(
            'assets/logos/logo.jpg',
            height: 120,
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                Get.to(() => const SettingPage());
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: kDefaultPadding),
              SizedBox(
                height: 180,
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: MediaQuery.of(context).size.height / 1.20,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.9,
                    initialPage: 0,
                    enableInfiniteScroll: false,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                  ),
                  items: imgList.map((imgLink) {
                    print(imgLink);
                    return Builder(
                      builder: (BuildContext context) {
                        return Image(
                          image: NetworkImage(imgLink),
                          fit: BoxFit.cover,
                          width: double.infinity,
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(height: kDefaultPadding * 2),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding - 5),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter your money:   500',
                    suffixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'FCFA',
                          style: TextStyle(
                            fontSize: kDefaultPadding - 5,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: kDefaultPadding - 5),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding - 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Frais: 4%',
                      style: TextStyle(
                        fontSize: kDefaultPadding - 5,
                      ),
                    ),
                    Text(
                      'Montant Total: 500 FCFA',
                      style: TextStyle(
                        fontSize: kDefaultPadding - 5,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: kDefaultPadding * 3),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: kDefaultPadding),
                      child: Container(
                        decoration:
                            BoxDecoration(color: Colors.white, boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0, 10),
                            blurRadius: 10,
                          ),
                        ]),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: '+88018568954',
                            filled: true,
                            fillColor: Colors.white,
                            enabled: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset(0, 10),
                              blurRadius: 10,
                            ),
                          ]),
                      child: Image.asset(
                        'assets/logos/orange.png',
                        height: 45,
                        width: 45,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: kDefaultPadding + 10),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: kDefaultPadding),
                      child: Container(
                        decoration:
                            BoxDecoration(color: Colors.white, boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0, 10),
                            blurRadius: 10,
                          ),
                        ]),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'tuhsg@gmail.com',
                            filled: true,
                            fillColor: Colors.white,
                            suffixIcon:
                                Icon(Icons.supervised_user_circle_rounded),
                            enabled: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset(0, 10),
                              blurRadius: 10,
                            ),
                          ]),
                      child: Image.asset(
                        'assets/logos/postman.png',
                        height: 45,
                        width: 45,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: kDefaultPadding * 2),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding * 3),
                child: ReusablePrimaryButton(
                  childText: 'Send',
                  textColor: Colors.white,
                  buttonColor: Colors.red,
                  onPressed: () {},
                ),
              )
            ],
          ),
        ));
  }
}
