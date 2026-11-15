import 'package:flutter/material.dart';
import 'package:first_flutter/pages/menu/history_page.dart';
import 'package:first_flutter/pages/menu/home_page.dart';
import 'package:first_flutter/pages/menu/pofile_page.dart';
import 'package:get/get.dart';

class MainMenuControllers extends GetxController {
  final RxInt selectedIndex = 0.obs;

  void changePage(int index) {
    selectedIndex.value = index;
  }

  List<Widget> get listpages => const [HomePage(), HistoryPage(), ProfilPage()];
}
