import 'package:get/get.dart';

class LoginController extends GetxController {

  RxBool isLoggedIn = false.obs;

  void login() {
    isLoggedIn.value = true;
  }

  void logout() {
    isLoggedIn.value = false;
  }

}
