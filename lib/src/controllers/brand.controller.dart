import 'package:get/get.dart';
import '../models/brand.model.dart';
import '../repository/brand.repository.dart' as brandRepository;

class BrandController extends GetxController {
  var listBrand = RxList<BrandModel>([]);
  RxBool isLoading = false.obs;

  //this function for set run functin(getListBrand()) first
  @override
  void onInit() {
    super.onInit();
    getListBrand();
  }

  getListBrand() async {
    isLoading.value = true; //run if true show loading

    brandRepository.getAllBrandRepository().then((res) {
      listBrand.value = res; //Response data from Model to function then()
      isLoading.value = false;
    });
  }
}
