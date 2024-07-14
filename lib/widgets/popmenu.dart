import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screen/ahug.dart';
import '../screen/college_page.dart';

class popMenu extends StatelessWidget {
  const popMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      splashRadius: 120.0,
      offset: Offset(30, 0.0),
      child: Text(
        'AHU',
        style: TextStyle(fontFamily: 'danc'),
        textAlign: TextAlign.start,
      ),
      itemBuilder: (context) => [
        const PopupMenuItem(
            child: Center(
              child: Text(
                'AHUG',
                style: TextStyle(fontFamily: 'danc'),
                textAlign: TextAlign.center,
              ),
            ),
            value: 1),
        const PopupMenuItem(
          child: Center(
            child: Text(
              'IT',
              style: TextStyle(fontFamily: 'danc'),
              textAlign: TextAlign.center,
            ),
          ),
          value: 2,
        )
      ],
      onSelected: (value) {
        if (value == 1) {
          Get.to(() => AhuG());
        } else if (value == 2) {
          Get.to(() => CollegePage());
        }
      },
    );
  }
}
