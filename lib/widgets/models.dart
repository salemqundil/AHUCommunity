class Post {
  String profilName;
  String profilImage;
  String timeAgo;
  String imagepost;
  int z = 0;
  bool posticon;

  Post(
      {required this.profilName,
      required this.profilImage,
      required this.timeAgo,
      required this.imagepost,
      required this.z,
      required this.posticon});
}

final List<Post> posts = [
  Post(
      profilName: 'Salem Qundil',
      profilImage: 'image/profile_1.png',
      timeAgo: '5 min',
      imagepost: 'image/post_1.png',
      z: 562,
      posticon: false),
  Post(
      profilName: 'Areeg',
      profilImage: 'image/profile_3.png',
      timeAgo: '10 min',
      imagepost: 'image/قنديل.jpg',
      z: 216,
      posticon: true),
  Post(
      profilName: 'Abeer',
      profilImage: 'image/profile_4.png',
      timeAgo: '56 min',
      imagepost: 'image/kaaba.png',
      z: 106,
      posticon: false),
  Post(
      profilName: 'Malak Mahmod',
      profilImage: 'image/profile_2.png',
      timeAgo: '2 min',
      imagepost: 'image/hashesh.jpg',
      z: 893,
      posticon: false),
];

final List<String> stories = [
  'image/profile_1.png',
  'image/profile_2.png',
  'image/profile_3.png',
  'image/profile_4.png',
];
