import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../models/product_model.dart';
import '../../app_controller.dart';
import '../../widgets/constants.dart';

class ProductRepository {
  Future<List<ProductModel>> getProducts() async {
    var url = Uri.parse('$URL_BASE/v2.0/produtounidade/listaprodutos/0/unidade/83402711000110');
    var headers = {
      'accept': 'application/json',
      'token': Get.find<AppController>().getToken,
      'Content-Type': 'application/json',
    };
    var response = await http.get(url, headers: headers);
    // if (response.statusCode != 200) throw Exception('http.post error: statusCode= ${response.statusCode}');

    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      return List<ProductModel>.from(data["response"]['produtos'].map((x) => ProductModel.fromJson(x)));
    } else {
      return <ProductModel>[];
    }
  }
}
