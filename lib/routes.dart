import 'package:first_flutter/pages/confirm_registration_page.dart';
import 'package:first_flutter/pages/detail_makanan_page.dart';
import 'package:first_flutter/pages/list_makanan_page.dart';
import 'package:first_flutter/pages/instagram_page.dart';
import 'package:first_flutter/pages/main_menu.dart';
import 'package:first_flutter/pages/registration_page.dart';
import 'package:get/get.dart';

class Routes {
  static const String login = "/login";
  static const String registration = "/registration";
  static const String confirmRegistration = "/confirm_registration";
  static const String listMakanan = "/list_makanan";
  static const String detailMakanan = "/detail_makanan";
  static const String mainMenu = "/main_menu";

  static final myPages = [
    GetPage(name: login, page: () => InstagramPage()),
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirmRegistration, page: () => ConfirmRegistrationPage()),
    GetPage(name: listMakanan, page: () => ListMakananPage()),
    GetPage(name: detailMakanan, page: () => DetailMakananPage()),
    GetPage(name: mainMenu, page: () => MainMenu()),
  ];
}
