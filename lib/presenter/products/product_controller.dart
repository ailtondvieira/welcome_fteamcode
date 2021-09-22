import 'package:get/get.dart';
import '../../infra/models/product_model.dart';
import '../../infra/repositories/product_repository.dart';

class ProductController extends GetxController {
  final _repository = ProductRepository();
  var isLoading = true.obs;
  var products = <ProductModel>[].obs;
  var isErrorApi = false.obs;

  @override
  void onInit() {
    getProductsControl();
    super.onInit();
  }

  void getProductsControl() async {
    try {
      isLoading(true);
      var listProducts = await _repository.getProducts();
      listProducts.isEmpty ? isErrorApi(true) : isErrorApi(false);
      if (products != null) {
        products.assignAll(listProducts);
      }
    } catch (ex) { 
      isErrorApi(true);
    } finally {
      isLoading(false);
    }
  }
}