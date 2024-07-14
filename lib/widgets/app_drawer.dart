import 'package:ahuc_app/screen/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screen/Welcome_screen.dart';
import '../screen/ahug.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  Widget listTile(String title, IconData icon, VoidCallback onTapLink) {
    //voidCallback = void Function();
    return ListTile(
      leading: Icon(
        (icon),
        size: 30,
        color: const Color.fromARGB(255, 98, 98, 98),
        textDirection: TextDirection.ltr,
      ),
      title: Text(
        textAlign: TextAlign.justify,
        title,
        style: const TextStyle(
            fontSize: 18, color: Color.fromARGB(255, 98, 98, 98)),
      ),
      onTap: onTapLink,
    );
  }

  @override
  Widget build(BuildContext context) {
    String name = "S.Q";
    String img = 'image/temmon.png';
    return Drawer(
      backgroundColor: const Color.fromARGB(0, 129, 135, 54),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Material(
            color: const Color.fromARGB(238, 204, 191, 1),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 45.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Material(
                    borderRadius: BorderRadius.circular(300),
                    elevation: 6,
                    child: CircleAvatar(
                      radius: 42.73,
                      backgroundColor: Colors.white,
                      backgroundImage: const AssetImage('image/temmon.png'),
                      child: MaterialButton(onPressed: () {
                        Get.to(() => Profile(
                              name: name,
                              img: img,
                            ));
                      }),
                    ),
                  ),
                  const SizedBox(height: 10),
                  InkWell(
                    onTap: () {
                      Get.to(() => Profile(
                            name: name,
                            img: img,
                          ));
                    },
                    child: const Text(
                      'S.Q',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                              color: Colors.black26,
                              offset: Offset(0, 2),
                              blurRadius: 2)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
          Expanded(
              flex: 2,
              child: Material(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Padding(
                    padding: const EdgeInsets.all(22.0),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            listTile('Home', Icons.home_outlined, () {
                              Get.to(() => AhuG());
                            }),
                            listTile('Serch', Icons.search_rounded, () {
                              Get.to(() => AhuG());
                            }),
                            listTile('Chat', Icons.chat_outlined, () {
                              Get.to(() => AhuG());
                            }),
                            listTile('Student Bag', Icons.work_outline_sharp,
                                () {
                              Get.to(() => AhuG());
                            }),
                            listTile('Student', Icons.people_outline, () {
                              Get.to(() => AhuG());
                            })
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 200),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              InkWell(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: const [
                                    Text('Log Out     ',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Color(0xdd707070),
                                            fontSize: 18)),
                                    Icon(
                                      Icons.logout_outlined,
                                      color: Color(0xff707070),
                                    ),
                                  ],
                                ),
                                onTap: () {
                                  Get.to(() => const WelcomeScreen());
                                  //Navigator.pushNamed(context, Forgotpass.screenR);
                                },
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )))
        ],
      ),
    );
  }
}
