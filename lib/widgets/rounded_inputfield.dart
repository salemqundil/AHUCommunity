import 'package:ahuc_app/widgets/text_field.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final BorderRadius radiusemail;
  final TextEditingController control;

  RoundedInputField({
    Key? key,
    required this.hintText,
    required this.radiusemail,
    required this.control,
  }) : super(key: key);
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_typing_uninitialized_variables
    return Textfildcontener(
      radiususer: radiusemail,
      child: TextFormField(
        controller: control,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: hintText,
            border: InputBorder.none,
            hintStyle: const TextStyle(fontSize: 10)),
        validator: (String? email) =>
            email != null && !EmailValidator.validate(email)
                ? 'Enter a valid email'
                : null,
        onChanged: ((value) => formkey.currentState?.validate()),
      ),
    );
  }
}
