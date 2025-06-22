import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/category.controller.dart';
import '../../grobal.config.dart';

class CategoryElement extends StatelessWidget {
  CategoryElement({
    super.key,
  });

  final _con = Get.put(CategoryController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Padding(
        padding: const EdgeInsets.only(top: 0, right: 8, bottom: 0, left: 8),
        child: SizedBox(
          height: 130,
          width: double.infinity,
          //color: Colors.blue,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _con.listCategory.length,
            itemBuilder: (BuildContext context, int index) {
              var imaege =
                  api_base_url + _con.listCategory[index].images.toString();
              //print(img);
              return SizedBox(
                width: 100, //width of card
                child: GestureDetector(
                  onTap: () {},
                  child: Card(
                    color: Colors.grey[300],
                    child: Column(
                      children: [
                        Padding(
                          //padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          padding: EdgeInsets.only(
                            top: 10,
                            right: 0,
                            bottom: 8,
                            left: 0,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              imaege,
                              width: 60,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "${_con.listCategory[index].name}",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      );
    });
  }
}
