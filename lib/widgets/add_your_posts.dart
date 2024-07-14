import 'package:ahuc_app/screen/post_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screen/profile_page.dart';
import 'models.dart';

class AddYourPost extends StatelessWidget {
  const AddYourPost({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    String name = '';
    String img = '';
    return Row(
      children: [
        Container(
          padding: const EdgeInsetsDirectional.all(5),
          width: Get.width,
          height: 60,
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Material(
                  borderRadius: BorderRadius.circular(300),
                  child: CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage(posts[3].profilImage),
                    child: MaterialButton(onPressed: () {
                      Get.to(() => Profile(
                            name: posts[3].profilName,
                            img: posts[3].profilImage,
                          ));
                    }),
                  ),
                ),
                Container(
                  width: Get.width / 1.35,
                  height: 45,
                  padding: const EdgeInsetsDirectional.all(3),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      // boxShadow: const [
                      //   BoxShadow(
                      //       color: Colors.black12,
                      //       offset: Offset(0, 3),
                      //       blurRadius: 8.0)
                      // ],
                      color: const Color(0xFFEDF0F6)),
                  child: InkWell(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 12, top: 10),
                        child: Text(
                          'Add Your Post',
                          style: TextStyle(color: Colors.black38),
                        ),
                      ),
                    ),
                    onTap: () {
                      Get.to(() => PostPage(post: posts[0]));
                    },
                  ),
                ),
                const Icon(Icons.photo_library_outlined)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
