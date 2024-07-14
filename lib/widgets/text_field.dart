import 'package:flutter/cupertino.dart';

class Textfildcontener extends StatelessWidget {
  final Widget child;
  final BorderRadius radiususer;
  const Textfildcontener({
    Key? key,
    required this.child,
    required this.radiususer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
      //width: size.width * 0.8,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 254, 235),
        borderRadius: radiususer,
      ),
      child: child,
    );
  }
}
