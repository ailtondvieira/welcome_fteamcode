import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget messageError(String mensagem) {
  return Container(
    width: Get.width,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.error,
          size: 50,
          color: Colors.red[900],
        ),
        Text(
          mensagem,
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
        ),
      ],
    ),
  );
}
