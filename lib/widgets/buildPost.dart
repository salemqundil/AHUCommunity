// import 'dart:core';
// import 'package:first_app/screen/college_page.dart';
// import 'package:first_app/screen/post_page.dart';
// import 'package:first_app/widgets/models.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../widgets/buildPost.dart';

// class PostBuild extends StatefulWidget {
//   const PostBuild({Key? key}) : super(key: key);

//   @override
//   State<PostBuild> createState() => _PostBuildState();
// }
// List<int> indexnum = [
//     0,1,2,3
//   ];
// class _PostBuildState extends State<PostBuild> {
//   @override
//   Widget build(
//     BuildContext context,
//   ) {
//     int index
//     int s = posts[index].z;
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5.0),
//       child: Container(
//         width: double.infinity,
//         height: 360,
//         decoration: BoxDecoration(
//             color: const Color.fromARGB(255, 255, 255, 255),
//             borderRadius: BorderRadius.circular(20)),
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 10),
//               child: Column(
//                 children: [
//                   ListTile(
//                     leading: Container(
//                       width: 50.0,
//                       height: 50.0,
//                       decoration: const BoxDecoration(
//                           shape: BoxShape.circle,
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.black12,
//                               offset: Offset(0, 2),
//                               blurRadius: 6.0,
//                             )
//                           ]),
//                       child: CircleAvatar(
//                         child: ClipOval(
//                           child: Image(
//                             height: 50.0,
//                             width: 50.0,
//                             image: AssetImage(posts[index].profilImage),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                     ),
//                     title: Text(posts[index].profilName),
//                     subtitle: Text(posts[index].timeAgo),
//                     trailing: IconButton(
//                       icon: const Icon(Icons.more_vert_outlined),
//                       onPressed: (() {
//                         setState(() {});
//                       }),
//                     ),
//                   ),
//                   InkWell(
//                     onDoubleTap: (() {
//                       setState(() {
//                         posts[index].posticon = !posts[index].posticon;
//                         posts[index].posticon
//                             ? posts[index].z--
//                             : posts[index].z++;
//                         s = posts[index].z;
//                       });
//                     }),
//                     onTap: () {
//                       Get.to(() => PostPage(
//                             post: posts[index],
//                           ));
//                     },
//                     child: Container(
//                       margin: EdgeInsets.all(10),
//                       width: double.infinity,
//                       height: 200,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(20),
//                         boxShadow: const [
//                           BoxShadow(
//                               color: Colors.black26,
//                               offset: Offset(0, 3),
//                               blurRadius: 8.0)
//                         ],
//                         image: DecorationImage(
//                             image: AssetImage(posts[index].imagepost),
//                             fit: BoxFit.fitWidth),
//                       ),
//                     ),
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Row(
//                         children: [
//                           Row(
//                             children: [
//                               IconButton(
//                                 padding: EdgeInsets.zero,
//                                 icon: Icon(
//                                   posts[index].posticon
//                                       ? Icons.favorite_border_rounded
//                                       : Icons.favorite,
//                                   color: posts[index].posticon
//                                       ? Colors.black
//                                       : Colors.red,
//                                 ),
//                                 onPressed: () {
//                                   setState(() {
//                                     posts[index].posticon =
//                                         !posts[index].posticon;
//                                     posts[index].posticon
//                                         ? posts[index].z--
//                                         : posts[index].z++;
//                                     s = posts[index].z;
//                                   });
//                                 },
//                                 iconSize: 30,
//                               ),
//                               Text(
//                                 '$s',
//                               )
//                             ],
//                           ),
//                           Row(
//                             children: [
//                               IconButton(
//                                 onPressed: () {
//                                   setState(() {
//                                     Get.to(() => PostPage(
//                                           post: posts[index],
//                                         ));
//                                   });
//                                 },
//                                 icon: const Icon(Icons.chat_outlined),
//                                 color: Colors.black,
//                                 iconSize: 27,
//                               ),
//                               const Text('103')
//                             ],
//                           ),
//                         ],
//                       )
//                     ],
//                   )
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
