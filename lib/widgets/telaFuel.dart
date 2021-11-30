import 'package:flutter/material.dart';
import 'package:appwaycost/widgets/botoes.dart';
import 'package:appwaycost/widgets/input.dart';
import 'package:appwaycost/widgets/textos.dart';

class TelaFuel extends StatefulWidget {
  @override
  State<TelaFuel> createState() => _TelaFuelState();
}

class _TelaFuelState extends State<TelaFuel> {
  String suaVariavel1="Variável vazia";
  String resultado="0";
  final _textoDigitado = TextEditingController();
  final _textoDigitado2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registrador de Combustível"),
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
          Input("Insira a quantidade de litros", "Litros", controller: _textoDigitado),
          Input("Informe o valor do combustível", "Valor", controller: _textoDigitado2),
          Botoes("Calcular", onPressed: _clickMultiplicar),
          Textos(resultado),
        ],
      ),
    );
  }

 void _clickMultiplicar() {
    setState(() {
      String suaVariavel2="0";
      double n1=0,n2=0,total=0;
      suaVariavel1=_textoDigitado.text;
      suaVariavel2=_textoDigitado2.text;
      n1=double.parse(suaVariavel1);
      n2=double.parse(suaVariavel2);
      total=n1*n2;
      resultado="O valor do abastecimento foi de : "+ total.toString();
    });
    print(resultado);
  }


}
