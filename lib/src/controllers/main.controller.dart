import 'package:ecommerce/src/pages/favorite.page.dart';
import 'package:ecommerce/src/pages/home.page.dart';
import 'package:ecommerce/src/pages/notification.page.dart';
import 'package:ecommerce/src/pages/order.page.dart';
import 'package:ecommerce/src/pages/profile.page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  int i = 2;

  List<Widget> pages = [
    NotificationPage(),
    OrderPage(),
    HomePage(),
    FavoritePage(),
    ProfilePage(),
  ];

  onSelectItem(val) {
    i = val;
    update();
    //print(val);
  }
}
