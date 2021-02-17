import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:moedanamao/app/controllers/controllers_home/controller_cotacoes/cotacoes_controller.dart';
import 'package:moedanamao/app/views/components/components_app/carregando_texto.dart';

import 'package:moedanamao/app/views/components/components_app/indicador_loading.dart';
import 'package:moedanamao/app/views/components/components_home/card_moedas.dart';

class CotacoesPage extends StatelessWidget {
  final controllerCotacoes = ControllerCotacoes();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Text(
                    "Fonte: Banco Central do Brasil",
                    style: TextStyle(color: Colors.white, fontSize: 10.0),
                  ),
                ),
                Observer(
                  builder: (_) {
                    if (controllerCotacoes.listaMoedas.value == null) {
                      return Carregando();
                    } else
                      return Container(
                        child: Text(
                          "Atualizado em - " +
                              controllerCotacoes
                                  .listaMoedas.value[0].dataCotacaoMoeda,
                          style: TextStyle(color: Colors.white, fontSize: 10.0),
                        ),
                      );
                  },
                ),
              ]),
        ),
        Observer(builder: (BuildContext context) {
          print(controllerCotacoes.listaMoedas.value);
          if (controllerCotacoes.listaMoedas.value == null) {
            return IndicadorLoading();
          }
          return ListView.builder(
              shrinkWrap: true,
              itemCount: controllerCotacoes.listaMoedas.value.length,
              itemBuilder: (_, index) {
                return CardMoeda(controllerCotacoes.listaMoedas.value[index]);
              });
        })
      ],
    );
  }
}
