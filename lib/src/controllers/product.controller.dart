import 'package:get/get.dart';
import 'package:ecommerce/src/models/product.model.dart';
import '../repository/product.repository.dart' as productRepository;

class ProductController extends GetxController {
  //var category = CategoryModel().obs;
  var listProducts = RxList<ProductModel>(([])); // declear for store data

  // isListView default = true
  //var isListView = true.obs; // boolean of

  //declear search
  //var search = "".obs;

  RxBool isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    //category.value = Get.arguments; //for Throw data
    //getAllProducts(category.value.id, search); // for recieve data
    getAllProducts();
  }

  void getAllProducts() {
    isLoading.value = true;

    //connect to repository
    productRepository.getAllProducts().then((res) {
      //response first
      isLoading.value = false;
      //response listProducts
      listProducts.value = res;
    });
  }
}
