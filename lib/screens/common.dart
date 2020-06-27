import 'package:covidnearby/components/card.dart';
import 'package:flutter/material.dart';

void main() => runApp(CommonScreen());

class CommonScreen extends StatelessWidget {
  static const String _title = "Detalhes";
  final String cidade_confirmados;
  final String cidade_fatais;
  final String cidade_mortalidade;

  final String estado_confirmados;
  final String estado_fatais;
  final String estado_mortalidade;

  CommonScreen({Key key, this.cidade_confirmados, this.cidade_fatais,
      this.cidade_mortalidade, this.estado_confirmados,
      this.estado_fatais, this.estado_mortalidade}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            children: <Widget>[
              CardCovid(confirmados: cidade_confirmados, fatais: cidade_fatais, mortalidade: cidade_mortalidade, titulo: "Cidade",),
              SizedBox(height: 15,),
              CardCovid(confirmados: estado_confirmados, fatais: estado_fatais, mortalidade: estado_mortalidade, titulo: "Estado",)
            ],
          )
        ),
      );
  }
}