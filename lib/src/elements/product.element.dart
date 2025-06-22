import 'package:ecommerce/grobal.config.dart';
import 'package:ecommerce/src/controllers/product.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductElement extends StatelessWidget {
  ProductElement({
    super.key,
  });

  final _con = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Padding(
        padding: const EdgeInsets.only(top: 0, right: 10, bottom: 0, left: 10),
        child: SizedBox(
          height: 455,
          child: ListView.builder(
            itemCount: _con.listProducts.length,
            itemBuilder: (BuildContext context, int index) {
              var product = _con.listProducts.value[index];
              String image = "${api_base_url}${product.images}";
              return SizedBox(
                height: 140,
                width: double.infinity,
                child: Card(
                  color: Colors.grey[300],
                  child: Row(
                    children: [
                      Container(
                        width: 130,
                        height: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              image,
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            children: [
                              Text(
                                "${product.description}",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red[400],
                                ),
                              ),
                              Text(
                                "\$${product.price}",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange[500],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 50,
                        height: double.infinity,
                        child: Icon(
                          Icons.chevron_right,
                          size: 24,
                        ),
                      ),
                    ],
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
