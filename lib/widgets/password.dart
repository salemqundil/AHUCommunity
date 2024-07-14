import 'package:flutter/material.dart';

class Password extends StatefulWidget {
  const Password({Key? key}) : super(key: key);

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  bool passicon = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.visiblePassword,
      obscureText: passicon,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: 'Password',
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
        String? x = 'true';
        if (value!.isEmpty) {
          x = 'false';
          return 'Please Enter Password';
        }
        if (value.length < 8) {
          x = 'false';
          return 'Password must be at least 8 letters and numbers.';
        }
        return null;

        /*if (!RegExp("^[a-zA-Z0-9]").hasMatch(value)) {
              return 'يا اخي ارحمني';
            }*/
      },
    );
  }
}
