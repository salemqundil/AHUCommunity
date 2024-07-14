import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screen/selsman_sign_up.dart';

// ignore: camel_case_types
class signupbox2 extends StatelessWidget {
  final String text;
  final Image png;
  const signupbox2({
    Key? key,
    required this.text,
    required this.png,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      borderRadius: BorderRadius.circular(30.0),
      color: const Color(0xffedd841),
      child: MaterialButton(
        onPressed: () {
          Get.to(() => const salesman());
          //Navigator.pushNamed(context, salesman.screenR);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: 100.0,
              height: 100.0,
              child: png,
            ),
            Text(
              text,
              style: const TextStyle(shadows: [
                Shadow(
                    color: Colors.black26, offset: Offset(0, 2), blurRadius: 2)
              ], fontSize: 22.0, color: Color.fromARGB(255, 255, 255, 255)),
            ),
          ],
        ),
      ),
    );
  }
}
