import 'package:ecommerce/src/controllers/brand.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BrandElement extends StatelessWidget {
  BrandElement({
    super.key,
  });

  final _con = Get.put(BrandController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Container(
        width: double.infinity,
        height: 50,
        color: Colors.red,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _con.listBrand.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {},
              child: Card(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Text(
                    "${_con.listBrand[index].name}",
                    style: TextStyle(color: Colors.black, fontSize: 10),
                  ),
                  alignment: Alignment.center,
                  //height: 20,
                  width: 100,
                ),
              ),
            );
          },
        ),
      );
    });
  }
}
