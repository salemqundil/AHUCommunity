import 'package:ahuc_app/screen/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/sign_up_box.dart';
import '../widgets/sign_up_box2.dart';

// ignore: camel_case_types
class signup extends StatefulWidget {
  static const String screenR = 'sign_up';
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

// ignore: camel_case_types
class _signupState extends State<signup> {
  final formkey = GlobalKey<FormState>();
  bool passicon = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.to(() => const signin());
              //Navigator.pushNamed(context, signin.screenR);
            },
            icon: const Icon(Icons.arrow_back)),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Who Are You?',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'cairo2',
                    color: Color(0xff707070)),
              ),
              Expanded(
                  child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 70, vertical: 23),
                child: signupbox(
                    png: Image.asset('image/reading.png'), text: 'Student'),
              )),
              Expanded(
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 70, vertical: 23),
                      child: signupbox(
                          text: 'Teacher',
                          png: Image.asset('image/reading_b.png')))),
              Expanded(
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 70, vertical: 23),
                      child: signupbox2(
                          text: 'Muerchant',
                          png: Image.asset('image/reading_c.png')))),
              const SizedBox(
                height: 80,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
