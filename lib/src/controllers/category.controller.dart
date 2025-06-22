import 'package:get/get.dart';
import '../models/category.model.dart';
import '../repository/category.repository.dart' as categoryRepository;

class CategoryController extends GetxController {
  var listCategory = RxList<CategoryModel>(([]));
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getListCategory();
  }

  getListCategory() async {
    isLoading.value = true; //run if true show loading
    categoryRepository.getAllCategoryRepository().then((res) {
      listCategory.value = res; //Response data from Model to function then()
      isLoading.value = false;
    });
  }
}
