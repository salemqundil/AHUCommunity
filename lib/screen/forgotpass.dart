import 'package:ahuc_app/screen/sign_in.dart';
import 'package:ahuc_app/widgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/rounded_inputfield.dart';

class Forgotpass extends StatefulWidget {
  static const String screenR = 'forgot_pass';
  const Forgotpass({Key? key}) : super(key: key);

  @override
  State<Forgotpass> createState() => _ForgotpassState();
}

class _ForgotpassState extends State<Forgotpass> {
  final formkey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool passicon = true;

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
              Container(
                  alignment: Alignment.center,
                  child: const Text(
                    'Account recovery',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'cairo2',
                        fontSize: 30.0,
                        color: Color(0xff707070)),
                  )),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                  alignment: Alignment.center,
                  child: const Text(
                    'A link has been sent to your email to set your password',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'cairo2',
                        fontSize: 12.0,
                        color: Color(0xff707070)),
                  )),
              const SizedBox(
                height: 40.0,
              ),
              RoundedInputField(
                control: _emailController,
                hintText: 'Email',
                radiusemail: BorderRadius.circular(60),
              ),
              const SizedBox(
                height: 20.0,
              ),
              mybutton(
                  Color: const Color(0xFFF4E409),
                  title: 'Send',
                  onpressed: () {
                    formkey.currentState?.validate();
                  })
            ],
          ),
        ),
      ),
    );
  }
}


//dsfjkdsfkdsfhdsjkh

/*TextFormField(
                  controller: TextEditingController(),
                  textAlign: TextAlign.right,
                  keyboardType: TextInputType.emailAddress,
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                    
                    hintText: 'البريد الإلكتروني',
                    filled: true,
                    
                    fillColor: const Color.fromARGB(255, 255, 254, 235),
                    focusColor: const Color.fromARGB(255, 255, 254, 235),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(0, 0, 187, 212),
                      ),
                    ),
                  ),
                  validator: (String? email) =>
                      email != null && !EmailValidator.validate(email)
                          ? 'Enter a valid email'
                          : null,
                  onChanged: ((value) => formkey.currentState?.validate()),
                ), */