import 'dart:core';
import 'package:ahuc_app/screen/college_page.dart';
import 'package:ahuc_app/screen/post_page.dart';
import 'package:ahuc_app/screen/profile_page.dart';
import 'package:ahuc_app/widgets/app_drawer.dart';
import 'package:ahuc_app/widgets/models.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/add_your_posts.dart';
import '../widgets/post_build.dart';

class AhuG extends StatefulWidget {
  const AhuG({Key? key}) : super(key: key);

  @override
  State<AhuG> createState() => _AhuGState();
}

class _AhuGState extends State<AhuG> {
  Widget _buildPost(int index) {
    String name = posts[index].profilName;
    String img = posts[index].profilName;
    int s = posts[index].z;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5.0),
      child: Container(
        width: double.infinity,
        height: 360,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: [
                  ListTile(
                    leading: Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset(0, 2),
                              blurRadius: 6.0,
                            )
                          ]),
                      child: Material(
                        borderRadius: BorderRadius.circular(300),
                        elevation: 1,
                        child: CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage(
                            posts[index].profilImage,
                          ),
                          child: MaterialButton(onPressed: () {
                            Get.to(() => Profile(
                                  name: posts[index].profilName,
                                  img: posts[index].profilImage,
                                ));
                          }),
                        ),
                      ),
                    ),
                    title: InkWell(
                        onTap: () {
                          Get.to(() => Profile(
                                name: posts[index].profilName,
                                img: posts[index].profilImage,
                              ));
                        },
                        child: Text(name)),
                    subtitle: Text(posts[index].timeAgo),
                    trailing: IconButton(
                      icon: const Icon(Icons.more_vert_outlined),
                      onPressed: (() {
                        setState(() {
                          const popMenu();
                        });
                      }),
                    ),
                  ),
                  InkWell(
                    onDoubleTap: (() {
                      setState(() {
                        posts[index].posticon = !posts[index].posticon;
                        posts[index].posticon
                            ? posts[index].z--
                            : posts[index].z++;
                        s = posts[index].z;
                      });
                    }),
                    onTap: () {
                      Get.to(() => PostPage(
                            post: posts[index],
                          ));
                    },
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0, 3),
                              blurRadius: 8.0)
                        ],
                        image: DecorationImage(
                            image: AssetImage(posts[index].imagepost),
                            fit: BoxFit.fitWidth),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Row(
                            children: [
                              IconButton(
                                padding: EdgeInsets.zero,
                                icon: Icon(
                                  posts[index].posticon
                                      ? Icons.favorite_border_rounded
                                      : Icons.favorite,
                                  color: posts[index].posticon
                                      ? Colors.black
                                      : Colors.red,
                                ),
                                onPressed: () {
                                  setState(() {
                                    posts[index].posticon =
                                        !posts[index].posticon;
                                    posts[index].posticon
                                        ? posts[index].z--
                                        : posts[index].z++;
                                    s = posts[index].z;
                                  });
                                },
                                iconSize: 30,
                              ),
                              Text(
                                '$s',
                              )
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    Get.to(() => PostPage(
                                          post: posts[index],
                                        ));
                                  });
                                },
                                icon: const Icon(Icons.chat_outlined),
                                color: Colors.black,
                                iconSize: 27,
                              ),
                              const Text('103')
                            ],
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  List<String> imgprofile = [
    'image/profile_1.png',
    'image/profile_2.png',
    'image/profile_3.png',
    'image/profile_4.png'
  ];
  List<String> nameprofile = ['Salem Qundil', 'iMalk Mahmod', 'areeg', 'Abeer'];

  String X = 'AHUG';
  String v = 'IT';
  int z = 600;
  bool passicon = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDF0F6),
      appBar: parlist(),
      drawer: const AppDrawer(),
      body: ListView(
        children: [
          AddYourPost(),
          SizedBox(
            width: double.infinity,
            height: Get.height / 4.5,
            //color: Colors.red,
            child: PostBuilder(),
          ),
          _buildPost(0),
          _buildPost(1),
          _buildPost(2),
          _buildPost(3)
        ],
      ),
    );
  }

  AppBar parlist() {
    return AppBar(
      actions: const [
        Icon(
          Icons.notifications_none_outlined,
          color: Colors.black,
        ),
        Padding(
          padding: EdgeInsets.only(right: 12, left: 7),
          child: Icon(Icons.chat),
        )
      ],
      title: Row(
        children: const [popMenu()],
      ),
      titleTextStyle: const TextStyle(
        fontSize: 18,
        fontFamily: 'danc',
        color: Colors.black,
      ),
      backgroundColor: Colors.white,
      elevation: 0,
    );
  }
}

// ignore: camel_case_types
class popMenu extends StatelessWidget {
  const popMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      splashRadius: 120.0,
      //offset: const Offset(30, 0.0),
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
      child: Row(
        children: [
          Text(
            'AHUG',
            style: TextStyle(fontFamily: 'danc'),
            textAlign: TextAlign.start,
          ),
          Icon(Icons.arrow_drop_down),
        ],
      ),
    );
  }
}
