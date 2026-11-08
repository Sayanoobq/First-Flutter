import 'package:first_flutter/pages/confirm_registration_page.dart';
import 'package:first_flutter/pages/detail_makanan_page.dart';
import 'package:first_flutter/pages/list_makanan_page.dart';
import 'package:first_flutter/pages/registration_page.dart';
import 'package:first_flutter/pages/login_page.dart';
import 'package:get/get.dart';

class Routes {
  static const String login = "/login";
  static const String registration = "/registration";
  static const String confirm_registration = "/confirm_registration";
  static const String list_makanan = "/list_makanan";
  static const String detail_makanan = "/detail_makanan";

  static final myPages = [
    GetPage(name: login, page: () => LoginPage()),
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirm_registration, page: () => ConfirmRegistrationPage()),
    GetPage(name: list_makanan, page: () => ListMakananPage()),
    GetPage(name: detail_makanan, page: () => DetailMakananPage()),
  ];
}
