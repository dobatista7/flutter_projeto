import 'package:flutter/material.dart';
import 'package:appwaycost/widgets/imagem.dart';
import 'package:appwaycost/widgets/textos.dart';
import 'package:appwaycost/widgets/telaKm.dart';
import 'package:appwaycost/widgets/telaFuel.dart';

class TelaMenu extends StatelessWidget {
  const TelaMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Custo de Trajeto"),
          actions: <Widget>[
            IconButton(
              onPressed: ()
              {
                _abreTelaKm(context, TelaKm());
              },
              icon: Text(
                "Km",
              ),
            ),
            IconButton(
              onPressed: ()
              {
                _abreTelaFuel(context, TelaFuel());
              },
              icon: Text(
                "Fuel",
              ),
            ),
          ]
      ),
      body: _layoutListView(),

    );
  }

  void _abreTelaKm(ctx, page) {
    Navigator.push(ctx, MaterialPageRoute(builder: (BuildContext context)
    {
      return page;
    }

    ));
  }


  _layoutListView() {
    return ListView(
      padding: EdgeInsets.all(2),
      children: <Widget>[
        Textos("Economia"),
        Imagem(caminhoImagem: "assets/images/logo.png",),
        Textos("Controle"),
        Imagem(caminhoImagem: "assets/images/logo.png",),
        Textos("Menor tempo"),
        Imagem(caminhoImagem: "assets/images/logo.png",),
        Textos("Satisfação garantida"),
        Imagem(caminhoImagem: "assets/images/logo.png",),
      ],

    );
  }

  void _abreTelaFuel(ctx, page) {
    Navigator.push(ctx, MaterialPageRoute(builder: (BuildContext context)
    {
      return page;
    }

    ));
  }
}