import 'package:flutter/material.dart';
import 'package:first_flutter/components/instagram_custom.dart';
import 'package:first_flutter/controllers/login_page_controller.dart';
import 'package:get/get.dart';

class InstagramPage extends StatelessWidget {
  InstagramPage({super.key});

  final LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFEAF5FF), Colors.white],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.camera_alt_outlined,
                  color: Color(0xFFE1306C),
                  size: 40,
                ),

                const SizedBox(height: 45),

                CustomTextfield(
                  hint: 'Username, email or mobile number',
                  controller: controller.txtUsername,
                ),

                const SizedBox(height: 8),

                CustomTextfield(
                  hint: 'Password',
                  controller: controller.txtPassword,
                  isPassword: true,
                ),

                const SizedBox(height: 5),

                CustomButton(text: 'Log in', onPressed: controller.login),

                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forgot password?',
                    style: TextStyle(color: Colors.black, fontSize: 10),
                  ),
                ),

                const SizedBox(height: 45),

                CustomOutlineButton(
                  text: 'Create new account',
                  onPressed: () {},
                ),

                const SizedBox(height: 10),

                const Text(
                  'Meta',
                  style: TextStyle(fontSize: 11, color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
