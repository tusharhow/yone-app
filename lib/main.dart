import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yone_app/app/presentation/auth/sign_up.dart';
import 'package:yone_app/app/presentation/main/home_page.dart';
import 'app/presentation/main/onboard_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Yoni',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const OnboardScreen(),
    );
  }
}
