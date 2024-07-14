import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/models.dart';

class PostPage extends StatefulWidget {
  const PostPage({Key? key, required this.post}) : super(key: key);
  final Post post;
  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    int s = widget.post.z;

    return Scaffold(
      backgroundColor: const Color(0xFFEDF0F6),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Container(
                width: double.infinity,
                height: 560,
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
                              child: CircleAvatar(
                                child: ClipOval(
                                  child: Image(
                                    height: 50.0,
                                    width: 50.0,
                                    image: AssetImage(widget.post.profilImage),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            title: Text(widget.post.profilName),
                            subtitle: Text(widget.post.timeAgo),
                            trailing: IconButton(
                              icon: const Icon(Icons.more_vert_outlined),
                              onPressed: (() {
                                setState(() {});
                              }),
                            ),
                          ),
                          InkWell(
                            onDoubleTap: (() {
                              setState(() {
                                widget.post.posticon = !widget.post.posticon;
                                widget.post.posticon
                                    ? widget.post.z--
                                    : widget.post.z++;
                                s = widget.post.z;
                              });
                            }),
                            onTap: () {
                              Get.to(() => PostPage(
                                    post: widget.post,
                                  ));
                            },
                            child: Container(
                              margin: const EdgeInsets.all(10),
                              width: double.infinity,
                              height: 400,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black26,
                                      offset: Offset(0, 3),
                                      blurRadius: 8.0)
                                ],
                                image: DecorationImage(
                                    image: AssetImage(widget.post.imagepost),
                                    fit: BoxFit.fill),
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
                                          widget.post.posticon
                                              ? Icons.favorite_border_rounded
                                              : Icons.favorite,
                                          color: widget.post.posticon
                                              ? Colors.black
                                              : Colors.red,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            widget.post.posticon =
                                                !widget.post.posticon;
                                            widget.post.posticon
                                                ? widget.post.z--
                                                : widget.post.z++;
                                            s = widget.post.z;
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
                                                  post: widget.post,
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
            ),
          ],
        ),
      ),
    );
  }
}
