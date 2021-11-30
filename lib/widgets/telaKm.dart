import 'package:flutter/material.dart';
import 'package:appwaycost/widgets/botoes.dart';
import 'package:appwaycost/widgets/input.dart';
import 'package:appwaycost/widgets/textos.dart';

class TelaKm extends StatefulWidget {
  @override
  State<TelaKm> createState() => _TelaKmState();
}

class _TelaKmState extends State<TelaKm> {
  String suaVariavel1 = "Variável vazia";
  String resultado = "0";
  final _textoDigitado = TextEditingController();
  final _textoDigitado2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registrador de KM"),
        backgroundColor: Colors.green,
      ),
      body: _body(),
    );
  }

  _body() {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Input("Insira o Kilometro Inicial", "Km Inicial",
              controller: _textoDigitado),
          Input(
              "Insira o Kilometro Final", "Km Final", controller: _textoDigitado2),
          Botoes("Calcular", onPressed: _clickSubtrair),
          Textos(resultado),
        ],
      ),
    );
  }

  void _clickSubtrair() {
    setState(() {
      String suaVariavel2 = "0";
      double n1 = 0,
          n2 = 0,
          total = 0;
      suaVariavel1 = _textoDigitado.text;
      suaVariavel2 = _textoDigitado2.text;
      n1 = double.parse(suaVariavel1);
      n2 = double.parse(suaVariavel2);
      total = n2 - n1;
      resultado = "O trajeto percorrido em Km foi: " + total.toString();
    });
    print(resultado);
  }
}

