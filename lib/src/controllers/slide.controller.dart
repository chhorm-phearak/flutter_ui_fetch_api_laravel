import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/slide.model.dart';
import '../repository/slide.repository.dart' as slideRepository;

class SlideController extends GetxController {
  var ListSlider = RxList<SlideModel>([]);
  SlideModel slider = SlideModel();

  RxBool isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    getAllSlider();
  }

  void getAllSlider() async {
    isLoading = true.obs;

    slideRepository.getAllSlideRepository().then((res) {
      ListSlider.value = res;
      isLoading = false.obs;
    });
  }
}
