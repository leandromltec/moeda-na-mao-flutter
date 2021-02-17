import 'package:flutter/material.dart';
import 'package:moedanamao/app/views/components/components_titulos/card_titulos.dart';

class TitulosPage extends StatefulWidget {
  @override
  _TitulosPageState createState() => _TitulosPageState();
}

class _TitulosPageState extends State<TitulosPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      CardTitulos("assets/images/ico_selic.png", "Taxa Selic", "23232"),
    ]);
  }
}
