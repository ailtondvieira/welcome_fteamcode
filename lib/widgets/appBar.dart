import 'package:flutter/material.dart';

Widget appBar(String title) {
  return AppBar(
    backgroundColor: Colors.grey[200],
    title: Text(
      title,
      style: TextStyle(fontSize: 17, color: Colors.black),
    ),
    elevation: 0,
    toolbarHeight: 50,
    centerTitle: true,
  );
}
