import 'package:flutter/material.dart';

Widget btnRodape(Function onPressed) {
  return Container(
    color: Colors.grey[200],
    child: Padding(
      padding: const EdgeInsets.only(right: 50, left: 50),
      child: MaterialButton(
        splashColor: Colors.red,
        onPressed: onPressed,
        color: Colors.white,
        child: Text("Buscar Produtos", style: TextStyle(color: Colors.black),),
      ),
    ),
  );
}
