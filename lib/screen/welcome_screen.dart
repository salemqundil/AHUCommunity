// ignore_for_file: file_names

import 'package:ahuc_app/screen/sign_in.dart';
import 'package:ahuc_app/screen/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/my_button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  static const String screenR = 'Welcome_screen';
  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Container(
          margin: const EdgeInsets.only(bottom: 60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 180.0,
                    height: 180.0,
                    child: Image.asset('image/sslc.png'),
                  ),
                  const Text(
                    'Welcome',
                    style: TextStyle(
                        fontFamily: 'cairo',
                        fontSize: 30.0,
                        color: Color(0xff707070)),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                margin: const EdgeInsets.only(top: 100),
                child: Column(children: [
                  //const Text(':   cont إلى'),
                  mybutton(
                    Color: const Color(0xffdbc500),
                    title: 'Login',
                    onpressed: () {
                      // ignore: prefer_const_constructors
                      // ignore: prefer_const_constructors
                      Get.to(() => const signin());
                    },
                  ),
                  mybutton(
                    Color: const Color.fromARGB(255, 159, 138, 14),
                    title: 'Sign up',
                    onpressed: () {
                      Get.to(() => const signup());
                    },
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
