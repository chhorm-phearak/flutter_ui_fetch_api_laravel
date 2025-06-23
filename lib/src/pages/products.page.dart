import 'package:ecommerce/grobal.config.dart';
import 'package:ecommerce/src/controllers/product.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductPage extends StatelessWidget {
  ProductPage({super.key});

  final _con = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Obx(() {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    height: 60,
                    color: Colors.blue[500],
                    width: double.infinity,
                    child: TextField(
                      onChanged: (val) {},
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _con.listProducts.length,
                itemBuilder: (BuildContext context, int index) {
                  var product = _con.listProducts.value[index];
                  String image = "${api_base_url}${product.images}";
                  return Container(
                    height: 130,
                    width: double.infinity,
                    child: Card(
                      elevation: 0.1,
                      child: Row(
                        children: [
                          Container(
                            width: 130,
                            height: double.infinity,
                            color: Colors.red,
                            child: Image.network(
                              image,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              color: Colors.blue,
                              child: Column(
                                children: [
                                  Text(
                                    "${product.name}",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text("\$${product.price}"),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              width: 50,
              child: Center(
                child: Icon(Icons.chevron_right),
              ),
            ),
          ],
        );
      }),
    );
  }
}
