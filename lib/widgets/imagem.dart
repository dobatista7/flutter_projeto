import 'package:flutter/material.dart';

class Imagem extends StatefulWidget {

  final String caminhoImagem;

  const Imagem ({key, required this.caminhoImagem}): super(key:key);

  @override
  _ImagemState createState() => _ImagemState();
}

class _ImagemState extends State<Imagem> {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      widget.caminhoImagem,
      filterQuality: FilterQuality.medium,
      fit: BoxFit.cover,
      scale: 50,
    );
  }
}
