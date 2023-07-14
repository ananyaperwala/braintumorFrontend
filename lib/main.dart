import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seg_d2/Verify.dart';
import 'package:seg_d2/auth_controller.dart';
import 'package:seg_d2/login_page.dart';
import 'package:seg_d2/signup_page.dart';
import 'package:seg_d2/Home.dart';
import 'package:seg_d2/Phone.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) => Get.put(AuthController()));
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login', // Set the initial route to 'login'
    routes: {
      'login': (context) => LoginPage(),
      'register': (context) => SignUpPage(),
      'home': (context) =>MyHomePage(),
      'phone':(context)=> const MyPhone(),
      'verify':(context)=>MyVerify(),
    },
  ));
}
