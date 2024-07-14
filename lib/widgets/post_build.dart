import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screen/profile_page.dart';
import 'models.dart';

class PostBuilder extends StatelessWidget {
  const PostBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: posts.length + 1,
        itemBuilder: (BuildContext context, int index) {
          String name = "";
          String img = "";
          if (index == 0) {
            return const SizedBox(
              width: 10,
            );
          }
          return ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              margin: const EdgeInsets.only(
                  left: 10, bottom: 10, right: 10, top: 10),
              width: Get.width / 1.35,
              height: 60.0,
              decoration: const BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0, 2),
                    blurRadius: 8.0)
              ]),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  color: const Color.fromARGB(255, 255, 138, 129),
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(18),
                      child: Container(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Column(
                                    children: [
                                      Material(
                                        borderRadius:
                                            BorderRadius.circular(300),
                                        elevation: 1,
                                        child: CircleAvatar(
                                          radius: 24,
                                          backgroundColor: Colors.white,
                                          backgroundImage: AssetImage(
                                              posts[index - 1].profilImage),
                                          child: MaterialButton(onPressed: () {
                                            Get.to(() => Profile(
                                                  name: posts[index - 1]
                                                      .profilName,
                                                  img: posts[index - 1]
                                                      .profilImage,
                                                ));
                                          }),
                                        ),
                                      ),
                                      // CircleAvatar(
                                      //   radius: 24,
                                      //   child: ClipOval(
                                      //       child: Image(
                                      //     image: AssetImage(
                                      //         posts[index - 1].profilImage),
                                      //     fit: BoxFit.cover,
                                      //   )),
                                      // )
                                    ],
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    InkWell(
                                        onTap: () {
                                          Get.to(() => Profile(
                                                name:
                                                    posts[index - 1].profilName,
                                                img: posts[index - 1]
                                                    .profilImage,
                                              ));
                                        },
                                        child:
                                            Text(posts[index - 1].profilName)),
                                    const Text('10 Dec',
                                        style: TextStyle(
                                          fontSize: 10,
                                        ))
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
