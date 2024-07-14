import 'package:ahuc_app/widgets/app_drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'ahug.dart';

class CollegePage extends StatefulWidget {
  const CollegePage({Key? key}) : super(key: key);

  @override
  State<CollegePage> createState() => _CollegePageState();
}

class _CollegePageState extends State<CollegePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Icon(
            Icons.inbox,
            color: Color(0x00504875),
          )
        ],
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 25),
              child: PopupMenuButton(
                splashRadius: 120.0,
                offset: const Offset(30, 0.0),
                iconSize: 30,
                itemBuilder: (context) => [
                  const PopupMenuItem(
                      value: 1,
                      child: Center(
                        child: Text(
                          'AHUG',
                          style: TextStyle(fontFamily: 'danc'),
                          textAlign: TextAlign.center,
                        ),
                      )),
                  const PopupMenuItem(
                    value: 2,
                    child: Center(
                      child: Text(
                        'IT',
                        style: TextStyle(fontFamily: 'danc'),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
                onSelected: (value) {
                  if (value == 1) {
                    Get.to(() => const AhuG());
                  } else if (value == 2) {
                    Get.to(() => const CollegePage());
                  }
                },
                child: const Text(
                  'AHUG',
                  style: TextStyle(fontFamily: 'danc'),
                  textAlign: TextAlign.start,
                ),
              ),
            )
          ],
        ),
        titleTextStyle: const TextStyle(
          fontSize: 18,
          fontFamily: 'danc',
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      drawer: AppDrawer(),
      body: Column(
        children: const [Text('IT')],
      ),
    );
  }
}
