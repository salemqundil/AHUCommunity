import 'dart:core';
import 'package:ahuc_app/widgets/text_field.dart';
import 'package:flutter/material.dart';

class RoundedPassInput extends StatefulWidget {
  const RoundedPassInput({Key? key}) : super(key: key);

  @override
  State<RoundedPassInput> createState() => _RoundedPassInputState();
}

class _RoundedPassInputState extends State<RoundedPassInput> {
  @override
  // ignore: override_on_non_overriding_member
  bool passicon = true;
  @override
  Widget build(BuildContext context) {
    return Textfildcontener(
        radiususer: const BorderRadius.only(
            bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
        child: TextFormField(
          keyboardType: TextInputType.visiblePassword,
          obscureText: passicon,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Confirm Password',
            hintStyle: const TextStyle(fontSize: 10),
            suffixIcon: IconButton(
                alignment: Alignment.centerRight,
                iconSize: 20,
                onPressed: () {
                  setState(() {
                    passicon = !passicon;
                  });
                },
                icon: Icon(passicon ? Icons.visibility : Icons.visibility_off)),
          ),
          validator: (String? value) {
            if (value!.isEmpty) {
              return 'Please Enter Password';
            }
            if (value.length < 8) {
              return 'Password must be at least 8 letters and numbers.';
            }
            return null;
            /*if (!RegExp("^[a-zA-Z0-9]").hasMatch(value)) {
              return 'يا اخي ارحمني';
            }*/
          },
        ));
  }
}
