import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'screen/Welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormState>();
  final emailcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AHU',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      initialRoute: WelcomeScreen.screenR,
      routes: {
        WelcomeScreen.screenR: (context) => const WelcomeScreen(),
      },
    );
  }
}
