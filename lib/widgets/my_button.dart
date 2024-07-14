import 'package:flutter/material.dart';

class mybutton extends StatelessWidget {
  const mybutton(
      {required this.Color, required this.title, required this.onpressed});

  final Color;
  final title;
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Material(
        elevation: 1.5,
        color: Color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onpressed,
          minWidth: 250.0,
          height: 40,
          child: Text(
            title,
            style: const TextStyle(
              shadows: [
                Shadow(
                    color: Colors.black26, offset: Offset(0, 2), blurRadius: 2)
              ],
              color: Colors.white,
              fontSize: 27,
            ),
          ),
        ),
      ),
    );
  }
}
