import 'package:ahuc_app/screen/ahug.dart';
import 'package:ahuc_app/widgets/my_button.dart';
import 'package:ahuc_app/widgets/text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/password.dart';
import '../widgets/rounded_inputfield.dart';
import 'Welcome_screen.dart';
import 'forgotpass.dart';

// ignore: camel_case_types
class signin extends StatefulWidget {
  static const String screenR = 'sign_in';
  const signin({Key? key}) : super(key: key);

  @override
  State<signin> createState() => _signinState();
}

// ignore: camel_case_types
class _signinState extends State<signin> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final formkey = GlobalKey<FormState>();
  bool passicon = true;

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim());
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.to(() => const WelcomeScreen());
              // Navigator.pushNamed(context, WelcomeScreen.screenR);
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
              Container(
                  alignment: Alignment.center,
                  child: const Text(
                    'Welcome Back',
                    style: TextStyle(
                      fontFamily: 'cairo2',
                      fontSize: 30.0,
                      color: Color(0xff707070),
                    ),
                  )),
              const SizedBox(
                height: 20.0,
              ),
              RoundedInputField(
                  control: _emailController,
                  hintText: 'Email',
                  radiusemail: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      // ignore: unnecessary_const
                      topRight: const Radius.circular(30))),
              const SizedBox(
                height: 10.0,
              ),
              const Textfildcontener(
                radiususer: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                child: Password(),
              ),
              const SizedBox(
                height: 30.0,
              ),
              mybutton(
                  Color: const Color(0xFFF4E409),
                  title: 'Login',
                  onpressed: () {
                    signIn;
                    formkey.currentState?.validate();
                    Get.offAll(() => AhuG());
                  }),
              const SizedBox(
                height: 11.0,
              ),
              InkWell(
                child: const Text('Forgot Password?',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color(0xdd707070), fontSize: 12)),
                onTap: () {
                  Get.to(() => const Forgotpass());
                  //Navigator.pushNamed(context, Forgotpass.screenR);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
