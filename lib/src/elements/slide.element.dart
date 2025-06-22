import 'package:ecommerce/grobal.config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecommerce/src/controllers/slide.controller.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SlideElement extends StatelessWidget {
  SlideElement({
    super.key,
  });

  final _con = Get.put(SlideController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Padding(
        padding: const EdgeInsets.only(top: 10, right: 10, bottom: 3, left: 10),
        child: SizedBox(
          height: 160, // height of slider
          width: double.infinity,
          child: _con.isLoading.value
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : CarouselSlider.builder(
                  itemCount: _con.ListSlider.length,
                  itemBuilder:
                      (BuildContext context, int index, int realIndex) {
                    var image =
                        "${api_base_url}${_con.ListSlider[index].images}";
                    var title = _con.ListSlider[index].title.toString();
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(14),
                      child: Stack(
                        children: [
                          Image.network(
                            image,
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: double.infinity,
                          ),
                          Positioned(
                            bottom: 10,
                            left: 10,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 14,
                                vertical: 10,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.yellow[500],
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(24),
                                  bottomLeft: Radius.circular(20),
                                ),
                                border: Border.all(
                                  width: 1,
                                  color: Colors.red,
                                ),
                              ),
                              child: Text(
                                "${title} 2025",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue[300],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  options: CarouselOptions(
                    height: 200,
                    //aspectRatio: 16 / 9,
                    viewportFraction: 1, //for show image full
                    // viewportFraction: 0.8, //for show image full
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 1),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
        ),
      );
    });
  }
}
