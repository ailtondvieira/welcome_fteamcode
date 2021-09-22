import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/messageErro.dart';
import '../../presenter/products/widgets/clip_preco_codigo.dart';
import '../../presenter/products/product_controller.dart';

class ListaProdutos extends StatelessWidget {
  final ProductController _control = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (_control.isLoading.value) {
        return Container(
          color: Colors.grey[200],
          child: (Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.white,
            ),
          )),
        );
      } else if (_control.isErrorApi.value) {
        return messageError('Erro ao buscar os dados da Api :( \n Volte daqui a pouquinho tá?!');
      } else {
        return ListView.builder(
          itemCount: _control.products.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  color: Colors.grey[200],
                  width: Get.width,
                  height: 90,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Linha da Descrição e do código
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    _control.products[index].descricao,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    _control.products[index].codigo.toString(),
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  clipPrecoCodigo(
                                    'R\$ ${_control.products[index].preco.toString()}',
                                    Icons.local_offer_outlined,
                                  ),
                                  clipPrecoCodigo(
                                    _control.products[index].codigoBarras,
                                    Icons.format_align_justify,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        );
      }
    });
  }
}
