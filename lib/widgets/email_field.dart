import 'package:email_validator/email_validator.dart';

import 'package:flutter/material.dart';

// ignore: camel_case_types
class emailfieldwidget extends StatefulWidget {
  final TextEditingController controller;

  // ignore: use_key_in_widget_constructors
  const emailfieldwidget({
    required this.controller,
  });

  @override
  State<emailfieldwidget> createState() => _emailfieldwidgetState();
}

// ignore: camel_case_types
class _emailfieldwidgetState extends State<emailfieldwidget> {
  @override
  Widget build(BuildContext context) => TextFormField(
        controller: widget.controller,
        decoration: const InputDecoration(
          hintText: 'Email',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          ),
          prefixIcon: Icon(Icons.email),
        ),
        autofillHints: const [AutofillHints.email],
        keyboardType: TextInputType.emailAddress,
        validator: (email) => email != null && !EmailValidator.validate(email)
            ? 'Enter a valid email'
            : null,
      );
}
