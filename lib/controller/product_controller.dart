import 'package:get/get.dart';
import 'package:getx_project/api_module/api_services.dart';
import 'package:getx_project/productModel.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  List productList = <ProductModel>[].obs;

  @override
  void onInit() {
    fetchProduct();
    super.onInit();
  }

  Future<void> fetchProduct() async {
    try {
      isLoading(true);
      var products = await ApiServices.fetchProducts();
      if(products != null) {
        productList.assignAll(products);
      }

    } finally {
      isLoading(false);
    }
  }
}