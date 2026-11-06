import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/login_controller.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final LoginController controller =
  Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login App'),
      ),
      body: Center(
        child: Obx(() {
          if (controller.isLoggedIn.value) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Welcome, User!'),
                ElevatedButton(
                  onPressed: controller.logout,
                  child: Text('Logout'),
                ),
              ],
            );
          } else {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Welcome, Guest!'),
                ElevatedButton(
                  onPressed: controller.login,
                  child: Text('Login'),
                ),
              ],
            );
          }
        }),
      ),
    );
  }
}
