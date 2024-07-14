import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'models.dart';

class ListViewBulder extends StatelessWidget {
  const ListViewBulder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: posts.length + 1,
        itemBuilder: (BuildContext context, int index) {
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
                        child: ListTile(
                          leading: Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    offset: Offset(0, 2),
                                    blurRadius: 6.0,
                                  )
                                ]),
                            child: CircleAvatar(
                              child: ClipOval(
                                child: Image(
                                  height: 50.0,
                                  width: 50.0,
                                  image:
                                      AssetImage(posts[index - 1].profilImage),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          title: Text(
                            posts[index - 1].profilName,
                            style: TextStyle(fontSize: 14),
                          ),
                          subtitle: Text(
                            posts[index - 1].timeAgo,
                            style: TextStyle(fontSize: 12),
                          ),
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
