import 'package:ecommerce/src/controllers/main.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  // declear _con = Concrete Object created from Class MainController
  final _con = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      builder: (_) => Scaffold(
        body: _con.pages[_con.i],
        bottomNavigationBar: SizedBox(
          //height: 70,
          child: BottomNavigationBar(
            //onTap: (val)=> _con.onSelectItem(val),
            onTap: _con.onSelectItem,
            backgroundColor: Colors.white70,
            selectedItemColor: Colors.pink[500],
            currentIndex: _con.i, // call index from MainController
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Iconsax.notification,
                  //size: 18,
                  //color: Colors.red,
                ),
                label: "Notification",
              ),
              BottomNavigationBarItem(
                icon: Icon(Iconsax.shop),
                label: "Order",
              ),
              BottomNavigationBarItem(
                icon: Icon(Iconsax.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Iconsax.heart),
                label: "Favorite",
              ),
              BottomNavigationBarItem(
                icon: Icon(Iconsax.user),
                label: "Profile",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
