import 'package:flutter/widgets.dart';
import 'package:first_flutter/routes.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final TextEditingController txtUsername = TextEditingController();
  final TextEditingController txtPassword = TextEditingController();

  void login() {
    if (txtUsername.text.trim().isEmpty || txtPassword.text.trim().isEmpty) {
      Get.snackbar("Error", "Username dan password harus terisi");
      return;
    }

    Get.offNamed(Routes.mainMenu);
  }

  @override
  void onClose() {
    txtUsername.dispose();
    txtPassword.dispose();
    super.onClose();
  }
}
