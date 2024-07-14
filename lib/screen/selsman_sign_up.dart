import 'package:ahuc_app/screen/sign_in.dart';
import 'package:ahuc_app/widgets/my_button.dart';
import 'package:ahuc_app/widgets/password.dart';
import 'package:ahuc_app/widgets/rounded_inputfield.dart';
import 'package:ahuc_app/widgets/rounded_passinput.dart';
import 'package:ahuc_app/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Welcome_screen.dart';

// ignore: camel_case_types
class salesman extends StatefulWidget {
  static const String screenR = 'sales_man';
  const salesman({Key? key}) : super(key: key);

  @override
  State<salesman> createState() => _salesmanState();
}

// ignore: camel_case_types
class _salesmanState extends State<salesman> {
  final formkey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
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
              Navigator.pushNamed(context, WelcomeScreen.screenR);
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                    alignment: Alignment.center,
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                          fontFamily: 'cairo2',
                          fontSize: 30.0,
                          color: Color(0xff707070)),
                    )),
                const SizedBox(
                  height: 20.0,
                ),
                Textfildcontener(
                    radiususer: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    child: TextFormField(
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'User Name',
                            hintStyle: TextStyle(fontSize: 10)))),
                const SizedBox(
                  height: 10.0,
                ),
                RoundedInputField(
                    control: _emailController,
                    hintText: 'Email',
                    radiusemail:
                        const BorderRadius.only(topLeft: Radius.circular(0))),
                const SizedBox(
                  height: 10.0,
                ),
                Textfildcontener(
                    radiususer: const BorderRadius.only(
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(0)),
                    child: TextFormField(
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Phone Number',
                            hintStyle: TextStyle(fontSize: 10)))),
                const SizedBox(
                  height: 10.0,
                ),
                const Textfildcontener(
                    radiususer: BorderRadius.only(
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(0)),
                    child: Password()),
                const SizedBox(
                  height: 10.0,
                ),
                RoundedPassInput(),
                const SizedBox(
                  height: 30.0,
                ),
                mybutton(
                    Color: const Color(0xFFF4E409),
                    title: 'Sign Up',
                    onpressed: () {
                      formkey.currentState?.validate();
                    }),
                const SizedBox(
                  height: 15.0,
                ),
                InkWell(
                  child: const Text('Already have an account?',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Color(0xdd707070), fontSize: 12)),
                  onTap: () {
                    Get.to(() => const signin());
                    // Navigator.pushNamed(context, signin.screenR);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
