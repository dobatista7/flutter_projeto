import 'package:flutter/material.dart';

class Textos extends StatelessWidget {
  String seuTexto;
  Textos(this.seuTexto);
  @override
  Widget build(BuildContext context) {
    return Text(
        seuTexto,
        style: const TextStyle(
          color: Colors.black,
          backgroundColor: Colors.green,
          fontSize: 35,
        )
    );
  }
}