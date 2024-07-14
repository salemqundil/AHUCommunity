import 'package:ahuc_app/screen/Welcome_screen.dart';
import 'package:ahuc_app/screen/sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthViewModel extends GetxController {
  static AuthViewModel instance = Get.find();
  late Rx<User?> _user;

  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onReady() {
    super.onReady();
    _user = Rx<User?>(auth.currentUser);
    _user.bindStream(auth.userChanges());
    ever(_user, _initialScreen);
  }

  _initialScreen(User? user) {
    if (user == null) {
      Get.offAll(() => const WelcomeScreen());
    } else {
      Get.offAll(() => const signin());
    }
  }

  void register(String email, password) async {
    try {
      auth.createUserWithEmailAndPassword(email: email, password: password);
      // ignore: empty_catches
    } catch (e) {}
  }
}
