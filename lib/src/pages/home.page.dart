import 'package:ecommerce/grobal.config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../elements/brand.element.dart';
import '../elements/category.element.dart';
import '../elements/product.element.dart';
import '../elements/search.element.dart';
import '../elements/slide.element.dart';
import '../elements/title.element.dart';
import 'components/my_circle_icon.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //toolbarHeight: 60,
        backgroundColor: Colors.white70,
        title: Text(
          'Discover',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.grey[800],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: SizedBox(
              width: 40,
              child: ElevatedButton(
                onPressed: () {},
                child: Icon(
                  Iconsax.shopping_bag,
                  color: Colors.black,
                  size: 22,
                ),
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.white.withOpacity(0.3),
                  foregroundColor: Colors.blue,
                  side: BorderSide(
                    color: Colors.black.withOpacity(0.3),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding:
                      EdgeInsets.only(top: 7, right: 8, bottom: 8, left: 8),
                ),
              ),
            ),
          ),
          // Padding(
          //   padding: EdgeInsets.only(right: 10.0),
          //   child: Container(
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(30),
          //       border: Border.all(
          //         color: Colors.black12,
          //       ),
          //     ),
          //     child: CircleAvatar(
          //       backgroundColor: Colors.grey[200],
          //       child: Icon(
          //         Iconsax.shopping_bag,
          //         size: 24,
          //         color: Colors.blue,
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Search
              SearchElement(),
              //SizedBox(height: 20),
              // Slider
              SlideElement(),
              //Title Categories
              TitleElement(txt_Title: "Categories", txt_Button: "See all"),
              //BrandElement(),
              // Category
              CategoryElement(),
              //Title Products
              TitleElement(txt_Title: "Products", txt_Button: "See all"),
              //Products
              ProductElement(),
            ],
          ),
        ),
      ),
    );
  }
}
