import 'package:ahuc_app/widgets/app_drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:blur/blur.dart';

import '../list_photo_videos.dart/photos.dart';

// ignore: must_be_immutable
class Profile extends StatelessWidget {
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  final String name;
  final String img;
  Profile({Key? key, required this.name, required this.img}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      drawer: const AppDrawer(),
      body: Column(
        children: [
          Stack(
            alignment: const Alignment(0, 0.78),
            children: [
              Stack(alignment: const Alignment(-0.95, -0.8), children: [
                Column(
                  children: [
                    Material(
                      child: Blur(
                        blur: 3,
                        blurColor: const Color.fromARGB(255, 224, 235, 255),
                        child: Container(
                          width: Get.width,
                          height: Get.height / 3.5,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(img), fit: BoxFit.fitWidth),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: Get.width,
                      height: 100,
                    )
                  ],
                ),
                IconButton(
                  onPressed: () {
                    _globalKey.currentState?.openDrawer();
                  },
                  icon: const Icon(Icons.menu,
                      color: Color.fromARGB(255, 0, 0, 0)),
                ),
              ]),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // Container(
                  //   width: 70,
                  //   height: 70,
                  //   decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(20),
                  //       image: DecorationImage(
                  //         image: AssetImage(img),
                  //       )),
                  // ),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage(img),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    name,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Text(
                    '@120190612057',
                    style: TextStyle(fontSize: 12, color: Colors.black38),
                  ),
                ],
              ),
            ],
          ),
          Container(
            width: Get.width / 1.2,
            height: 0.2,
            color: Colors.black45,
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Wrap(
                    spacing: 5,
                    runSpacing: 5,
                    children: List.generate(mypostsimg.length, (index) {
                      return Container(
                        width: Get.width / 2.2,
                        height: Get.width / 2.2,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(mypostsimg[index]),
                                fit: BoxFit.cover)),
                      );
                    }),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
