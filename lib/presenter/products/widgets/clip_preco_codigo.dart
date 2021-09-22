import 'package:flutter/material.dart';

Widget clipPrecoCodigo(String texto, IconData icone) {
  return Chip(
    elevation: 1,
    visualDensity: VisualDensity.compact,
    backgroundColor: Colors.red[900].withOpacity(0.1),
    padding: const EdgeInsets.symmetric(horizontal: 1.0),
    avatar: CircleAvatar(
      backgroundColor: Colors.transparent,
      child: Icon(
        icone,
        size: 22,
        color: Colors.red,
      ),
    ),
    label: Text(
      texto,
      style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
