import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/btnRodape.dart';
import '../../presenter/products/product_controller.dart';
import '../../presenter/products/product_view.dart';
import '../../widgets/appBar.dart';

class HomeView extends StatelessWidget {
  final ProductController productControl = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Listagem de Produtos"),
      body: ListaProdutos(),
      bottomNavigationBar: btnRodape(() => productControl.getProductsControl()),
    );
  }
}
