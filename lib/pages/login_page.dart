import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:first_flutter/components/custom_elevatedbutton.dart';
import 'package:first_flutter/components/custom_textfield.dart';
import 'package:first_flutter/components/custom_text.dart';
import 'package:first_flutter/controllers/login_page_controller.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login page")),
      body: Column(
        children: [
          CustomText(
            text: "Selamat datang",
            fontSize: 25,
            color: const Color.fromARGB(255, 138, 124, 187),
            fontWeight: FontWeight.bold,
          ),

          Container(
            margin: EdgeInsets.all(10),
            child: CustomTextfield(
              myHint: "input username",
              txtController: controller.txtUsername,
            ),
          ),

          Container(
            margin: EdgeInsets.all(10),
            child: CustomTextfield(
              myHint: "input password",
              txtController: controller.txtPassword,
            ),
          ),

          Obx(() {
            return controller.isLoading.value
                ? const CircularProgressIndicator()
                : CustomElevatedbutton(
                    text: "Login",
                    textColor: const Color.fromARGB(255, 30, 175, 44),
                    fontSize: 20,
                    onPressed: () {
                      controller.login();
                    },
                  );
          }),
        ],
      ),
    );
  }
}
